%% make movie for tracers
close all
clear all
file.f1 = 'd:\projects\IMPAQT\MALG\testbench\tidal_flume_farm\farm3DWQ\farm3D.map';
grd = 'd:\projects\IMPAQT\MALG_hydro\farm3D\DFM_DELWAQ_flowfm\flowfm_waqgeom.nc';

D.x = ncread(grd,'mesh2d_node_x');
D.y = ncread(grd,'mesh2d_node_y');
D.z = ncread(grd,'mesh2d_node_z');
D.node = ncread(grd,'mesh2d_face_nodes');

meta1 = delwaq('open',file.f1);

subno = 4;
subname = 'COD';

[time1,mdatd] = delwaq('read',meta1,subno,0,1);
[times,~] = delwaq('read',meta1,subno,1,0);

meta2 = delwaq('open',file.f2);
[time2,mdatd] = delwaq('read',meta2,subno,0,1);

nosegs = length(mdatd);
files = fieldnames(file);
iter = (time2- time1) * 4;
nolayer = 1;

for tt = 500:1000
    figure(tt)
    [time1,mdatd1] = delwaq('read',meta1,subno,0,tt);
    [~,topElem1,~] = dflowgrid_to_tri_wElem(D.node',mdatd1(1:nosegs/nolayer)');
    
    [time2,mdatd2] = delwaq('read',meta2,subno,0,tt-iter);
    [tri,topElem2,~] = dflowgrid_to_tri_wElem(D.node',mdatd2(1:nosegs/nolayer)');    
    
    tri(tri == 0) = NaN;
    su = trisurf(tri,D.x,D.y,0*D.x,topElem2-topElem1,'EdgeColor','none'); hold on
    h{1} = colorbar;
    plot(ldb(:,1),ldb(:,2),'k');
    view(2)
    clim([-5,5])
    clr = colormap_cpt('GMT_polar',21);
    colormap(clr);

    h{1}.Label.String = strcat(subname,' concentration difference [mg/l]');
    for ll = 1:length(locs(:,1))
        scatter(locs{ll,2},locs{ll,3},10,'r','filled'); hold on
        scatter(locs{ll,2},locs{ll,3},10,'ko'); hold on
        scatter(locs{ll,2},locs{ll,3},20,'k+'); hold on
        text(locs{ll,2}+locs{ll,4},locs{ll,3}+locs{ll,5},locs{ll,1},'FontSize',8)
    end
    xlim([-80.0149  -79.7334])
    ylim([-2.4795   -1.9164])
    axis equal

    xlim([-80 -79.7])
    ylim([-2.5 -1.9])
    xlim([-80.0149  -79.7334])
    ylim([-2.4795   -1.9164])
    
    xlabel('longitude')
    ylabel('latitude')

    title(sprintf('%s',datestr(time1)))    
    print('-dpng','-r400',['p:\11201302-guayaquil\03_waterquality\06_postProcessing\' subname '_diff_map\' num2str(tt) '.png'])
    close all
end