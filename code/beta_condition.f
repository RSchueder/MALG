            IF (Temp .lt. 271.0) THEN 
                beta = 1.000e-15 
            ELSE IF (Temp .ge. 271.0 .AND. Temp .lt. 271.1) THEN 
                beta = 1.000e-15 + (1.0 - 10.0*(271.1-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 271.1 .AND. Temp .lt. 271.2) THEN 
                beta = 1.000e-15 + (1.0 - 10.0*(271.2-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 271.2 .AND. Temp .lt. 271.3) THEN 
                beta = 1.000e-15 + (1.0 - 10.0*(271.3-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 271.3 .AND. Temp .lt. 271.4) THEN 
                beta = 1.000e-15 + (1.0 - 10.0*(271.4-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 271.4 .AND. Temp .lt. 271.5) THEN 
                beta = 1.000e-15 + (1.0 - 10.0*(271.5-Temp))*1.093e-16 
            ELSE IF (Temp .ge. 271.5 .AND. Temp .lt. 271.6) THEN 
                beta = 1.109e-15 + (1.0 - 10.0*(271.6-Temp))*8.329e-16 
            ELSE IF (Temp .ge. 271.6 .AND. Temp .lt. 271.7) THEN 
                beta = 1.942e-15 + (1.0 - 10.0*(271.7-Temp))*1.320e-15 
            ELSE IF (Temp .ge. 271.7 .AND. Temp .lt. 271.8) THEN 
                beta = 3.262e-15 + (1.0 - 10.0*(271.8-Temp))*2.105e-15 
            ELSE IF (Temp .ge. 271.8 .AND. Temp .lt. 271.9) THEN 
                beta = 5.367e-15 + (1.0 - 10.0*(271.9-Temp))*3.281e-15 
            ELSE IF (Temp .ge. 271.9 .AND. Temp .lt. 272.0) THEN 
                beta = 8.648e-15 + (1.0 - 10.0*(272.0-Temp))*5.288e-15 
            ELSE IF (Temp .ge. 272.0 .AND. Temp .lt. 272.1) THEN 
                beta = 1.394e-14 + (1.0 - 10.0*(272.1-Temp))*7.608e-15 
            ELSE IF (Temp .ge. 272.1 .AND. Temp .lt. 272.2) THEN 
                beta = 2.154e-14 + (1.0 - 10.0*(272.2-Temp))*1.176e-14 
            ELSE IF (Temp .ge. 272.2 .AND. Temp .lt. 272.3) THEN 
                beta = 3.331e-14 + (1.0 - 10.0*(272.3-Temp))*1.713e-14 
            ELSE IF (Temp .ge. 272.3 .AND. Temp .lt. 272.4) THEN 
                beta = 5.043e-14 + (1.0 - 10.0*(272.4-Temp))*2.593e-14 
            ELSE IF (Temp .ge. 272.4 .AND. Temp .lt. 272.5) THEN 
                beta = 7.636e-14 + (1.0 - 10.0*(272.5-Temp))*3.457e-14 
            ELSE IF (Temp .ge. 272.5 .AND. Temp .lt. 272.6) THEN 
                beta = 1.109e-13 + (1.0 - 10.0*(272.6-Temp))*5.021e-14 
            ELSE IF (Temp .ge. 272.6 .AND. Temp .lt. 272.7) THEN 
                beta = 1.611e-13 + (1.0 - 10.0*(272.7-Temp))*6.814e-14 
            ELSE IF (Temp .ge. 272.7 .AND. Temp .lt. 272.8) THEN 
                beta = 2.293e-13 + (1.0 - 10.0*(272.8-Temp))*9.695e-14 
            ELSE IF (Temp .ge. 272.8 .AND. Temp .lt. 272.9) THEN 
                beta = 3.262e-13 + (1.0 - 10.0*(272.9-Temp))*1.284e-13 
            ELSE IF (Temp .ge. 272.9 .AND. Temp .lt. 273.0) THEN 
                beta = 4.546e-13 + (1.0 - 10.0*(273.0-Temp))*1.790e-13 
            ELSE IF (Temp .ge. 273.0 .AND. Temp .lt. 273.1) THEN 
                beta = 6.336e-13 + (1.0 - 10.0*(273.1-Temp))*2.313e-13 
            ELSE IF (Temp .ge. 273.1 .AND. Temp .lt. 273.2) THEN 
                beta = 8.648e-13 + (1.0 - 10.0*(273.2-Temp))*2.914e-13 
            ELSE IF (Temp .ge. 273.2 .AND. Temp .lt. 273.3) THEN 
                beta = 1.156e-12 + (1.0 - 10.0*(273.3-Temp))*3.896e-13 
            ELSE IF (Temp .ge. 273.3 .AND. Temp .lt. 273.4) THEN 
                beta = 1.546e-12 + (1.0 - 10.0*(273.4-Temp))*5.210e-13 
            ELSE IF (Temp .ge. 273.4 .AND. Temp .lt. 273.5) THEN 
                beta = 2.067e-12 + (1.0 - 10.0*(273.5-Temp))*6.398e-13 
            ELSE IF (Temp .ge. 273.5 .AND. Temp .lt. 273.6) THEN 
                beta = 2.707e-12 + (1.0 - 10.0*(273.6-Temp))*8.378e-13 
            ELSE IF (Temp .ge. 273.6 .AND. Temp .lt. 273.7) THEN 
                beta = 3.544e-12 + (1.0 - 10.0*(273.7-Temp))*1.002e-12 
            ELSE IF (Temp .ge. 273.7 .AND. Temp .lt. 273.8) THEN 
                beta = 4.546e-12 + (1.0 - 10.0*(273.8-Temp))*1.285e-12 
            ELSE IF (Temp .ge. 273.8 .AND. Temp .lt. 273.9) THEN 
                beta = 5.831e-12 + (1.0 - 10.0*(273.9-Temp))*1.495e-12 
            ELSE IF (Temp .ge. 273.9 .AND. Temp .lt. 274.0) THEN 
                beta = 7.326e-12 + (1.0 - 10.0*(274.0-Temp))*1.878e-12 
            ELSE IF (Temp .ge. 274.0 .AND. Temp .lt. 274.1) THEN 
                beta = 9.204e-12 + (1.0 - 10.0*(274.1-Temp))*2.359e-12 
            ELSE IF (Temp .ge. 274.1 .AND. Temp .lt. 274.2) THEN 
                beta = 1.156e-11 + (1.0 - 10.0*(274.2-Temp))*2.666e-12 
            ELSE IF (Temp .ge. 274.2 .AND. Temp .lt. 274.3) THEN 
                beta = 1.423e-11 + (1.0 - 10.0*(274.3-Temp))*3.280e-12 
            ELSE IF (Temp .ge. 274.3 .AND. Temp .lt. 274.4) THEN 
                beta = 1.751e-11 + (1.0 - 10.0*(274.4-Temp))*4.036e-12 
            ELSE IF (Temp .ge. 274.4 .AND. Temp .lt. 274.5) THEN 
                beta = 2.154e-11 + (1.0 - 10.0*(274.5-Temp))*4.422e-12 
            ELSE IF (Temp .ge. 274.5 .AND. Temp .lt. 274.6) THEN 
                beta = 2.597e-11 + (1.0 - 10.0*(274.6-Temp))*5.986e-12 
            ELSE IF (Temp .ge. 274.6 .AND. Temp .lt. 274.7) THEN 
                beta = 3.195e-11 + (1.0 - 10.0*(274.7-Temp))*5.768e-12 
            ELSE IF (Temp .ge. 274.7 .AND. Temp .lt. 274.8) THEN 
                beta = 3.772e-11 + (1.0 - 10.0*(274.8-Temp))*7.743e-12 
            ELSE IF (Temp .ge. 274.8 .AND. Temp .lt. 274.9) THEN 
                beta = 4.546e-11 + (1.0 - 10.0*(274.9-Temp))*8.207e-12 
            ELSE IF (Temp .ge. 274.9 .AND. Temp .lt. 275.0) THEN 
                beta = 5.367e-11 + (1.0 - 10.0*(275.0-Temp))*9.688e-12 
            ELSE IF (Temp .ge. 275.0 .AND. Temp .lt. 275.1) THEN 
                beta = 6.336e-11 + (1.0 - 10.0*(275.1-Temp))*1.144e-11 
            ELSE IF (Temp .ge. 275.1 .AND. Temp .lt. 275.2) THEN 
                beta = 7.480e-11 + (1.0 - 10.0*(275.2-Temp))*1.350e-11 
            ELSE IF (Temp .ge. 275.2 .AND. Temp .lt. 275.3) THEN 
                beta = 8.830e-11 + (1.0 - 10.0*(275.3-Temp))*1.380e-11 
            ELSE IF (Temp .ge. 275.3 .AND. Temp .lt. 275.4) THEN 
                beta = 1.021e-10 + (1.0 - 10.0*(275.4-Temp))*1.843e-11 
            ELSE IF (Temp .ge. 275.4 .AND. Temp .lt. 275.5) THEN 
                beta = 1.205e-10 + (1.0 - 10.0*(275.5-Temp))*1.884e-11 
            ELSE IF (Temp .ge. 275.5 .AND. Temp .lt. 275.6) THEN 
                beta = 1.394e-10 + (1.0 - 10.0*(275.6-Temp))*2.178e-11 
            ELSE IF (Temp .ge. 275.6 .AND. Temp .lt. 275.7) THEN 
                beta = 1.611e-10 + (1.0 - 10.0*(275.7-Temp))*2.136e-11 
            ELSE IF (Temp .ge. 275.7 .AND. Temp .lt. 275.8) THEN 
                beta = 1.825e-10 + (1.0 - 10.0*(275.8-Temp))*2.852e-11 
            ELSE IF (Temp .ge. 275.8 .AND. Temp .lt. 275.9) THEN 
                beta = 2.110e-10 + (1.0 - 10.0*(275.9-Temp))*2.797e-11 
            ELSE IF (Temp .ge. 275.9 .AND. Temp .lt. 276.0) THEN 
                beta = 2.390e-10 + (1.0 - 10.0*(276.0-Temp))*3.168e-11 
            ELSE IF (Temp .ge. 276.0 .AND. Temp .lt. 276.1) THEN 
                beta = 2.707e-10 + (1.0 - 10.0*(276.1-Temp))*3.587e-11 
            ELSE IF (Temp .ge. 276.1 .AND. Temp .lt. 276.2) THEN 
                beta = 3.065e-10 + (1.0 - 10.0*(276.2-Temp))*4.063e-11 
            ELSE IF (Temp .ge. 276.2 .AND. Temp .lt. 276.3) THEN 
                beta = 3.472e-10 + (1.0 - 10.0*(276.3-Temp))*4.601e-11 
            ELSE IF (Temp .ge. 276.3 .AND. Temp .lt. 276.4) THEN 
                beta = 3.932e-10 + (1.0 - 10.0*(276.4-Temp))*4.297e-11 
            ELSE IF (Temp .ge. 276.4 .AND. Temp .lt. 276.5) THEN 
                beta = 4.362e-10 + (1.0 - 10.0*(276.5-Temp))*5.781e-11 
            ELSE IF (Temp .ge. 276.5 .AND. Temp .lt. 276.6) THEN 
                beta = 4.940e-10 + (1.0 - 10.0*(276.6-Temp))*5.399e-11 
            ELSE IF (Temp .ge. 276.6 .AND. Temp .lt. 276.7) THEN 
                beta = 5.479e-10 + (1.0 - 10.0*(276.7-Temp))*5.989e-11 
            ELSE IF (Temp .ge. 276.7 .AND. Temp .lt. 276.8) THEN 
                beta = 6.078e-10 + (1.0 - 10.0*(276.8-Temp))*6.643e-11 
            ELSE IF (Temp .ge. 276.8 .AND. Temp .lt. 276.9) THEN 
                beta = 6.743e-10 + (1.0 - 10.0*(276.9-Temp))*7.369e-11 
            ELSE IF (Temp .ge. 276.9 .AND. Temp .lt. 277.0) THEN 
                beta = 7.480e-10 + (1.0 - 10.0*(277.0-Temp))*8.174e-11 
            ELSE IF (Temp .ge. 277.0 .AND. Temp .lt. 277.1) THEN 
                beta = 8.297e-10 + (1.0 - 10.0*(277.1-Temp))*9.068e-11 
            ELSE IF (Temp .ge. 277.1 .AND. Temp .lt. 277.2) THEN 
                beta = 9.204e-10 + (1.0 - 10.0*(277.2-Temp))*1.006e-10 
            ELSE IF (Temp .ge. 277.2 .AND. Temp .lt. 277.3) THEN 
                beta = 1.021e-09 + (1.0 - 10.0*(277.3-Temp))*8.833e-11 
            ELSE IF (Temp .ge. 277.3 .AND. Temp .lt. 277.4) THEN 
                beta = 1.109e-09 + (1.0 - 10.0*(277.4-Temp))*1.212e-10 
            ELSE IF (Temp .ge. 277.4 .AND. Temp .lt. 277.5) THEN 
                beta = 1.231e-09 + (1.0 - 10.0*(277.5-Temp))*1.065e-10 
            ELSE IF (Temp .ge. 277.5 .AND. Temp .lt. 277.6) THEN 
                beta = 1.337e-09 + (1.0 - 10.0*(277.6-Temp))*1.157e-10 
            ELSE IF (Temp .ge. 277.6 .AND. Temp .lt. 277.7) THEN 
                beta = 1.453e-09 + (1.0 - 10.0*(277.7-Temp))*1.257e-10 
            ELSE IF (Temp .ge. 277.7 .AND. Temp .lt. 277.8) THEN 
                beta = 1.578e-09 + (1.0 - 10.0*(277.8-Temp))*1.366e-10 
            ELSE IF (Temp .ge. 277.8 .AND. Temp .lt. 277.9) THEN 
                beta = 1.715e-09 + (1.0 - 10.0*(277.9-Temp))*1.874e-10 
            ELSE IF (Temp .ge. 277.9 .AND. Temp .lt. 278.0) THEN 
                beta = 1.902e-09 + (1.0 - 10.0*(278.0-Temp))*1.221e-10 
            ELSE IF (Temp .ge. 278.0 .AND. Temp .lt. 278.1) THEN 
                beta = 2.024e-09 + (1.0 - 10.0*(278.1-Temp))*1.751e-10 
            ELSE IF (Temp .ge. 278.1 .AND. Temp .lt. 278.2) THEN 
                beta = 2.200e-09 + (1.0 - 10.0*(278.2-Temp))*1.903e-10 
            ELSE IF (Temp .ge. 278.2 .AND. Temp .lt. 278.3) THEN 
                beta = 2.390e-09 + (1.0 - 10.0*(278.3-Temp))*2.068e-10 
            ELSE IF (Temp .ge. 278.3 .AND. Temp .lt. 278.4) THEN 
                beta = 2.597e-09 + (1.0 - 10.0*(278.4-Temp))*1.667e-10 
            ELSE IF (Temp .ge. 278.4 .AND. Temp .lt. 278.5) THEN 
                beta = 2.763e-09 + (1.0 - 10.0*(278.5-Temp))*2.391e-10 
            ELSE IF (Temp .ge. 278.5 .AND. Temp .lt. 278.6) THEN 
                beta = 3.002e-09 + (1.0 - 10.0*(278.6-Temp))*2.598e-10 
            ELSE IF (Temp .ge. 278.6 .AND. Temp .lt. 278.7) THEN 
                beta = 3.262e-09 + (1.0 - 10.0*(278.7-Temp))*2.095e-10 
            ELSE IF (Temp .ge. 278.7 .AND. Temp .lt. 278.8) THEN 
                beta = 3.472e-09 + (1.0 - 10.0*(278.8-Temp))*2.229e-10 
            ELSE IF (Temp .ge. 278.8 .AND. Temp .lt. 278.9) THEN 
                beta = 3.695e-09 + (1.0 - 10.0*(278.9-Temp))*3.196e-10 
            ELSE IF (Temp .ge. 278.9 .AND. Temp .lt. 279.0) THEN 
                beta = 4.014e-09 + (1.0 - 10.0*(279.0-Temp))*2.578e-10 
            ELSE IF (Temp .ge. 279.0 .AND. Temp .lt. 279.1) THEN 
                beta = 4.272e-09 + (1.0 - 10.0*(279.1-Temp))*2.743e-10 
            ELSE IF (Temp .ge. 279.1 .AND. Temp .lt. 279.2) THEN 
                beta = 4.546e-09 + (1.0 - 10.0*(279.2-Temp))*3.933e-10 
            ELSE IF (Temp .ge. 279.2 .AND. Temp .lt. 279.3) THEN 
                beta = 4.940e-09 + (1.0 - 10.0*(279.3-Temp))*3.172e-10 
            ELSE IF (Temp .ge. 279.3 .AND. Temp .lt. 279.4) THEN 
                beta = 5.257e-09 + (1.0 - 10.0*(279.4-Temp))*3.375e-10 
            ELSE IF (Temp .ge. 279.4 .AND. Temp .lt. 279.5) THEN 
                beta = 5.594e-09 + (1.0 - 10.0*(279.5-Temp))*3.592e-10 
            ELSE IF (Temp .ge. 279.5 .AND. Temp .lt. 279.6) THEN 
                beta = 5.954e-09 + (1.0 - 10.0*(279.6-Temp))*3.823e-10 
            ELSE IF (Temp .ge. 279.6 .AND. Temp .lt. 279.7) THEN 
                beta = 6.336e-09 + (1.0 - 10.0*(279.7-Temp))*4.068e-10 
            ELSE IF (Temp .ge. 279.7 .AND. Temp .lt. 279.8) THEN 
                beta = 6.743e-09 + (1.0 - 10.0*(279.8-Temp))*4.329e-10 
            ELSE IF (Temp .ge. 279.8 .AND. Temp .lt. 279.9) THEN 
                beta = 7.176e-09 + (1.0 - 10.0*(279.9-Temp))*3.040e-10 
            ELSE IF (Temp .ge. 279.9 .AND. Temp .lt. 280.0) THEN 
                beta = 7.480e-09 + (1.0 - 10.0*(280.0-Temp))*4.803e-10 
            ELSE IF (Temp .ge. 280.0 .AND. Temp .lt. 280.1) THEN 
                beta = 7.960e-09 + (1.0 - 10.0*(280.1-Temp))*5.111e-10 
            ELSE IF (Temp .ge. 280.1 .AND. Temp .lt. 280.2) THEN 
                beta = 8.471e-09 + (1.0 - 10.0*(280.2-Temp))*5.439e-10 
            ELSE IF (Temp .ge. 280.2 .AND. Temp .lt. 280.3) THEN 
                beta = 9.015e-09 + (1.0 - 10.0*(280.3-Temp))*5.788e-10 
            ELSE IF (Temp .ge. 280.3 .AND. Temp .lt. 280.4) THEN 
                beta = 9.594e-09 + (1.0 - 10.0*(280.4-Temp))*4.064e-10 
            ELSE IF (Temp .ge. 280.4 .AND. Temp .lt. 280.5) THEN 
                beta = 1.000e-08 + (1.0 - 10.0*(280.5-Temp))*6.421e-10 
            ELSE IF (Temp .ge. 280.5 .AND. Temp .lt. 280.6) THEN 
                beta = 1.064e-08 + (1.0 - 10.0*(280.6-Temp))*4.508e-10 
            ELSE IF (Temp .ge. 280.6 .AND. Temp .lt. 280.7) THEN 
                beta = 1.109e-08 + (1.0 - 10.0*(280.7-Temp))*7.123e-10 
            ELSE IF (Temp .ge. 280.7 .AND. Temp .lt. 280.8) THEN 
                beta = 1.181e-08 + (1.0 - 10.0*(280.8-Temp))*7.580e-10 
            ELSE IF (Temp .ge. 280.8 .AND. Temp .lt. 280.9) THEN 
                beta = 1.256e-08 + (1.0 - 10.0*(280.9-Temp))*5.322e-10 
            ELSE IF (Temp .ge. 280.9 .AND. Temp .lt. 281.0) THEN 
                beta = 1.310e-08 + (1.0 - 10.0*(281.0-Temp))*8.408e-10 
            ELSE IF (Temp .ge. 281.0 .AND. Temp .lt. 281.1) THEN 
                beta = 1.394e-08 + (1.0 - 10.0*(281.1-Temp))*5.903e-10 
            ELSE IF (Temp .ge. 281.1 .AND. Temp .lt. 281.2) THEN 
                beta = 1.453e-08 + (1.0 - 10.0*(281.2-Temp))*6.154e-10 
            ELSE IF (Temp .ge. 281.2 .AND. Temp .lt. 281.3) THEN 
                beta = 1.514e-08 + (1.0 - 10.0*(281.3-Temp))*9.722e-10 
            ELSE IF (Temp .ge. 281.3 .AND. Temp .lt. 281.4) THEN 
                beta = 1.611e-08 + (1.0 - 10.0*(281.4-Temp))*6.826e-10 
            ELSE IF (Temp .ge. 281.4 .AND. Temp .lt. 281.5) THEN 
                beta = 1.680e-08 + (1.0 - 10.0*(281.5-Temp))*7.115e-10 
            ELSE IF (Temp .ge. 281.5 .AND. Temp .lt. 281.6) THEN 
                beta = 1.751e-08 + (1.0 - 10.0*(281.6-Temp))*1.124e-09 
            ELSE IF (Temp .ge. 281.6 .AND. Temp .lt. 281.7) THEN 
                beta = 1.863e-08 + (1.0 - 10.0*(281.7-Temp))*7.893e-10 
            ELSE IF (Temp .ge. 281.7 .AND. Temp .lt. 281.8) THEN 
                beta = 1.942e-08 + (1.0 - 10.0*(281.8-Temp))*8.227e-10 
            ELSE IF (Temp .ge. 281.8 .AND. Temp .lt. 281.9) THEN 
                beta = 2.024e-08 + (1.0 - 10.0*(281.9-Temp))*8.576e-10 
            ELSE IF (Temp .ge. 281.9 .AND. Temp .lt. 282.0) THEN 
                beta = 2.110e-08 + (1.0 - 10.0*(282.0-Temp))*1.355e-09 
            ELSE IF (Temp .ge. 282.0 .AND. Temp .lt. 282.1) THEN 
                beta = 2.246e-08 + (1.0 - 10.0*(282.1-Temp))*9.513e-10 
            ELSE IF (Temp .ge. 282.1 .AND. Temp .lt. 282.2) THEN 
                beta = 2.341e-08 + (1.0 - 10.0*(282.2-Temp))*9.916e-10 
            ELSE IF (Temp .ge. 282.2 .AND. Temp .lt. 282.3) THEN 
                beta = 2.440e-08 + (1.0 - 10.0*(282.3-Temp))*1.034e-09 
            ELSE IF (Temp .ge. 282.3 .AND. Temp .lt. 282.4) THEN 
                beta = 2.543e-08 + (1.0 - 10.0*(282.4-Temp))*1.077e-09 
            ELSE IF (Temp .ge. 282.4 .AND. Temp .lt. 282.5) THEN 
                beta = 2.651e-08 + (1.0 - 10.0*(282.5-Temp))*1.123e-09 
            ELSE IF (Temp .ge. 282.5 .AND. Temp .lt. 282.6) THEN 
                beta = 2.763e-08 + (1.0 - 10.0*(282.6-Temp))*1.171e-09 
            ELSE IF (Temp .ge. 282.6 .AND. Temp .lt. 282.7) THEN 
                beta = 2.880e-08 + (1.0 - 10.0*(282.7-Temp))*1.220e-09 
            ELSE IF (Temp .ge. 282.7 .AND. Temp .lt. 282.8) THEN 
                beta = 3.002e-08 + (1.0 - 10.0*(282.8-Temp))*1.272e-09 
            ELSE IF (Temp .ge. 282.8 .AND. Temp .lt. 282.9) THEN 
                beta = 3.130e-08 + (1.0 - 10.0*(282.9-Temp))*1.326e-09 
            ELSE IF (Temp .ge. 282.9 .AND. Temp .lt. 283.0) THEN 
                beta = 3.262e-08 + (1.0 - 10.0*(283.0-Temp))*1.382e-09 
            ELSE IF (Temp .ge. 283.0 .AND. Temp .lt. 283.1) THEN 
                beta = 3.400e-08 + (1.0 - 10.0*(283.1-Temp))*1.440e-09 
            ELSE IF (Temp .ge. 283.1 .AND. Temp .lt. 283.2) THEN 
                beta = 3.544e-08 + (1.0 - 10.0*(283.2-Temp))*1.501e-09 
            ELSE IF (Temp .ge. 283.2 .AND. Temp .lt. 283.3) THEN 
                beta = 3.695e-08 + (1.0 - 10.0*(283.3-Temp))*1.565e-09 
            ELSE IF (Temp .ge. 283.3 .AND. Temp .lt. 283.4) THEN 
                beta = 3.851e-08 + (1.0 - 10.0*(283.4-Temp))*1.631e-09 
            ELSE IF (Temp .ge. 283.4 .AND. Temp .lt. 283.5) THEN 
                beta = 4.014e-08 + (1.0 - 10.0*(283.5-Temp))*1.700e-09 
            ELSE IF (Temp .ge. 283.5 .AND. Temp .lt. 283.6) THEN 
                beta = 4.184e-08 + (1.0 - 10.0*(283.6-Temp))*1.772e-09 
            ELSE IF (Temp .ge. 283.6 .AND. Temp .lt. 283.7) THEN 
                beta = 4.362e-08 + (1.0 - 10.0*(283.7-Temp))*9.142e-10 
            ELSE IF (Temp .ge. 283.7 .AND. Temp .lt. 283.8) THEN 
                beta = 4.453e-08 + (1.0 - 10.0*(283.8-Temp))*1.886e-09 
            ELSE IF (Temp .ge. 283.8 .AND. Temp .lt. 283.9) THEN 
                beta = 4.642e-08 + (1.0 - 10.0*(283.9-Temp))*1.966e-09 
            ELSE IF (Temp .ge. 283.9 .AND. Temp .lt. 284.0) THEN 
                beta = 4.838e-08 + (1.0 - 10.0*(284.0-Temp))*2.049e-09 
            ELSE IF (Temp .ge. 284.0 .AND. Temp .lt. 284.1) THEN 
                beta = 5.043e-08 + (1.0 - 10.0*(284.1-Temp))*1.057e-09 
            ELSE IF (Temp .ge. 284.1 .AND. Temp .lt. 284.2) THEN 
                beta = 5.149e-08 + (1.0 - 10.0*(284.2-Temp))*2.181e-09 
            ELSE IF (Temp .ge. 284.2 .AND. Temp .lt. 284.3) THEN 
                beta = 5.367e-08 + (1.0 - 10.0*(284.3-Temp))*2.273e-09 
            ELSE IF (Temp .ge. 284.3 .AND. Temp .lt. 284.4) THEN 
                beta = 5.594e-08 + (1.0 - 10.0*(284.4-Temp))*1.173e-09 
            ELSE IF (Temp .ge. 284.4 .AND. Temp .lt. 284.5) THEN 
                beta = 5.712e-08 + (1.0 - 10.0*(284.5-Temp))*2.419e-09 
            ELSE IF (Temp .ge. 284.5 .AND. Temp .lt. 284.6) THEN 
                beta = 5.954e-08 + (1.0 - 10.0*(284.6-Temp))*2.522e-09 
            ELSE IF (Temp .ge. 284.6 .AND. Temp .lt. 284.7) THEN 
                beta = 6.206e-08 + (1.0 - 10.0*(284.7-Temp))*1.301e-09 
            ELSE IF (Temp .ge. 284.7 .AND. Temp .lt. 284.8) THEN 
                beta = 6.336e-08 + (1.0 - 10.0*(284.8-Temp))*2.684e-09 
            ELSE IF (Temp .ge. 284.8 .AND. Temp .lt. 284.9) THEN 
                beta = 6.604e-08 + (1.0 - 10.0*(284.9-Temp))*2.798e-09 
            ELSE IF (Temp .ge. 284.9 .AND. Temp .lt. 285.0) THEN 
                beta = 6.884e-08 + (1.0 - 10.0*(285.0-Temp))*1.443e-09 
            ELSE IF (Temp .ge. 285.0 .AND. Temp .lt. 285.1) THEN 
                beta = 7.028e-08 + (1.0 - 10.0*(285.1-Temp))*2.977e-09 
            ELSE IF (Temp .ge. 285.1 .AND. Temp .lt. 285.2) THEN 
                beta = 7.326e-08 + (1.0 - 10.0*(285.2-Temp))*1.536e-09 
            ELSE IF (Temp .ge. 285.2 .AND. Temp .lt. 285.3) THEN 
                beta = 7.480e-08 + (1.0 - 10.0*(285.3-Temp))*3.168e-09 
            ELSE IF (Temp .ge. 285.3 .AND. Temp .lt. 285.4) THEN 
                beta = 7.796e-08 + (1.0 - 10.0*(285.4-Temp))*1.634e-09 
            ELSE IF (Temp .ge. 285.4 .AND. Temp .lt. 285.5) THEN 
                beta = 7.960e-08 + (1.0 - 10.0*(285.5-Temp))*3.372e-09 
            ELSE IF (Temp .ge. 285.5 .AND. Temp .lt. 285.6) THEN 
                beta = 8.297e-08 + (1.0 - 10.0*(285.6-Temp))*1.739e-09 
            ELSE IF (Temp .ge. 285.6 .AND. Temp .lt. 285.7) THEN 
                beta = 8.471e-08 + (1.0 - 10.0*(285.7-Temp))*1.776e-09 
            ELSE IF (Temp .ge. 285.7 .AND. Temp .lt. 285.8) THEN 
                beta = 8.648e-08 + (1.0 - 10.0*(285.8-Temp))*3.664e-09 
            ELSE IF (Temp .ge. 285.8 .AND. Temp .lt. 285.9) THEN 
                beta = 9.015e-08 + (1.0 - 10.0*(285.9-Temp))*1.890e-09 
            ELSE IF (Temp .ge. 285.9 .AND. Temp .lt. 286.0) THEN 
                beta = 9.204e-08 + (1.0 - 10.0*(286.0-Temp))*3.899e-09 
            ELSE IF (Temp .ge. 286.0 .AND. Temp .lt. 286.1) THEN 
                beta = 9.594e-08 + (1.0 - 10.0*(286.1-Temp))*2.011e-09 
            ELSE IF (Temp .ge. 286.1 .AND. Temp .lt. 286.2) THEN 
                beta = 9.795e-08 + (1.0 - 10.0*(286.2-Temp))*2.053e-09 
            ELSE IF (Temp .ge. 286.2 .AND. Temp .lt. 286.3) THEN 
                beta = 1.000e-07 + (1.0 - 10.0*(286.3-Temp))*2.096e-09 
            ELSE IF (Temp .ge. 286.3 .AND. Temp .lt. 286.4) THEN 
                beta = 1.021e-07 + (1.0 - 10.0*(286.4-Temp))*4.325e-09 
            ELSE IF (Temp .ge. 286.4 .AND. Temp .lt. 286.5) THEN 
                beta = 1.064e-07 + (1.0 - 10.0*(286.5-Temp))*2.231e-09 
            ELSE IF (Temp .ge. 286.5 .AND. Temp .lt. 286.6) THEN 
                beta = 1.087e-07 + (1.0 - 10.0*(286.6-Temp))*2.277e-09 
            ELSE IF (Temp .ge. 286.6 .AND. Temp .lt. 286.7) THEN 
                beta = 1.109e-07 + (1.0 - 10.0*(286.7-Temp))*2.325e-09 
            ELSE IF (Temp .ge. 286.7 .AND. Temp .lt. 286.8) THEN 
                beta = 1.133e-07 + (1.0 - 10.0*(286.8-Temp))*4.798e-09 
            ELSE IF (Temp .ge. 286.8 .AND. Temp .lt. 286.9) THEN 
                beta = 1.181e-07 + (1.0 - 10.0*(286.9-Temp))*2.474e-09 
            ELSE IF (Temp .ge. 286.9 .AND. Temp .lt. 287.0) THEN 
                beta = 1.205e-07 + (1.0 - 10.0*(287.0-Temp))*2.526e-09 
            ELSE IF (Temp .ge. 287.0 .AND. Temp .lt. 287.1) THEN 
                beta = 1.231e-07 + (1.0 - 10.0*(287.1-Temp))*2.579e-09 
            ELSE IF (Temp .ge. 287.1 .AND. Temp .lt. 287.2) THEN 
                beta = 1.256e-07 + (1.0 - 10.0*(287.2-Temp))*2.633e-09 
            ELSE IF (Temp .ge. 287.2 .AND. Temp .lt. 287.3) THEN 
                beta = 1.283e-07 + (1.0 - 10.0*(287.3-Temp))*2.689e-09 
            ELSE IF (Temp .ge. 287.3 .AND. Temp .lt. 287.4) THEN 
                beta = 1.310e-07 + (1.0 - 10.0*(287.4-Temp))*2.745e-09 
            ELSE IF (Temp .ge. 287.4 .AND. Temp .lt. 287.5) THEN 
                beta = 1.337e-07 + (1.0 - 10.0*(287.5-Temp))*2.802e-09 
            ELSE IF (Temp .ge. 287.5 .AND. Temp .lt. 287.6) THEN 
                beta = 1.365e-07 + (1.0 - 10.0*(287.6-Temp))*2.861e-09 
            ELSE IF (Temp .ge. 287.6 .AND. Temp .lt. 287.7) THEN 
                beta = 1.394e-07 + (1.0 - 10.0*(287.7-Temp))*2.921e-09 
            ELSE IF (Temp .ge. 287.7 .AND. Temp .lt. 287.8) THEN 
                beta = 1.423e-07 + (1.0 - 10.0*(287.8-Temp))*2.982e-09 
            ELSE IF (Temp .ge. 287.8 .AND. Temp .lt. 287.9) THEN 
                beta = 1.453e-07 + (1.0 - 10.0*(287.9-Temp))*3.045e-09 
            ELSE IF (Temp .ge. 287.9 .AND. Temp .lt. 288.0) THEN 
                beta = 1.483e-07 + (1.0 - 10.0*(288.0-Temp))*3.109e-09 
            ELSE IF (Temp .ge. 288.0 .AND. Temp .lt. 288.1) THEN 
                beta = 1.514e-07 + (1.0 - 10.0*(288.1-Temp))*3.174e-09 
            ELSE IF (Temp .ge. 288.1 .AND. Temp .lt. 288.2) THEN 
                beta = 1.546e-07 + (1.0 - 10.0*(288.2-Temp))*3.240e-09 
            ELSE IF (Temp .ge. 288.2 .AND. Temp .lt. 288.3) THEN 
                beta = 1.578e-07 + (1.0 - 10.0*(288.3-Temp))*3.308e-09 
            ELSE IF (Temp .ge. 288.3 .AND. Temp .lt. 288.4) THEN 
                beta = 1.611e-07 + (1.0 - 10.0*(288.4-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 288.4 .AND. Temp .lt. 288.5) THEN 
                beta = 1.611e-07 + (1.0 - 10.0*(288.5-Temp))*3.378e-09 
            ELSE IF (Temp .ge. 288.5 .AND. Temp .lt. 288.6) THEN 
                beta = 1.645e-07 + (1.0 - 10.0*(288.6-Temp))*3.448e-09 
            ELSE IF (Temp .ge. 288.6 .AND. Temp .lt. 288.7) THEN 
                beta = 1.680e-07 + (1.0 - 10.0*(288.7-Temp))*3.521e-09 
            ELSE IF (Temp .ge. 288.7 .AND. Temp .lt. 288.8) THEN 
                beta = 1.715e-07 + (1.0 - 10.0*(288.8-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 288.8 .AND. Temp .lt. 288.9) THEN 
                beta = 1.715e-07 + (1.0 - 10.0*(288.9-Temp))*3.595e-09 
            ELSE IF (Temp .ge. 288.9 .AND. Temp .lt. 289.0) THEN 
                beta = 1.751e-07 + (1.0 - 10.0*(289.0-Temp))*3.670e-09 
            ELSE IF (Temp .ge. 289.0 .AND. Temp .lt. 289.1) THEN 
                beta = 1.788e-07 + (1.0 - 10.0*(289.1-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 289.1 .AND. Temp .lt. 289.2) THEN 
                beta = 1.788e-07 + (1.0 - 10.0*(289.2-Temp))*3.747e-09 
            ELSE IF (Temp .ge. 289.2 .AND. Temp .lt. 289.3) THEN 
                beta = 1.825e-07 + (1.0 - 10.0*(289.3-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 289.3 .AND. Temp .lt. 289.4) THEN 
                beta = 1.825e-07 + (1.0 - 10.0*(289.4-Temp))*3.825e-09 
            ELSE IF (Temp .ge. 289.4 .AND. Temp .lt. 289.5) THEN 
                beta = 1.863e-07 + (1.0 - 10.0*(289.5-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 289.5 .AND. Temp .lt. 289.6) THEN 
                beta = 1.863e-07 + (1.0 - 10.0*(289.6-Temp))*3.905e-09 
            ELSE IF (Temp .ge. 289.6 .AND. Temp .lt. 289.7) THEN 
                beta = 1.902e-07 + (1.0 - 10.0*(289.7-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 289.7 .AND. Temp .lt. 289.8) THEN 
                beta = 1.902e-07 + (1.0 - 10.0*(289.8-Temp))*3.987e-09 
            ELSE IF (Temp .ge. 289.8 .AND. Temp .lt. 289.9) THEN 
                beta = 1.942e-07 + (1.0 - 10.0*(289.9-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 289.9 .AND. Temp .lt. 290.0) THEN 
                beta = 1.942e-07 + (1.0 - 10.0*(290.0-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 290.0 .AND. Temp .lt. 290.1) THEN 
                beta = 1.942e-07 + (1.0 - 10.0*(290.1-Temp))*4.071e-09 
            ELSE IF (Temp .ge. 290.1 .AND. Temp .lt. 290.2) THEN 
                beta = 1.983e-07 + (1.0 - 10.0*(290.2-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 290.2 .AND. Temp .lt. 290.3) THEN 
                beta = 1.983e-07 + (1.0 - 10.0*(290.3-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 290.3 .AND. Temp .lt. 290.4) THEN 
                beta = 1.983e-07 + (1.0 - 10.0*(290.4-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 290.4 .AND. Temp .lt. 290.5) THEN 
                beta = 1.983e-07 + (1.0 - 10.0*(290.5-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 290.5 .AND. Temp .lt. 290.6) THEN 
                beta = 1.983e-07 + (1.0 - 10.0*(290.6-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 290.6 .AND. Temp .lt. 290.7) THEN 
                beta = 1.983e-07 + (1.0 - 10.0*(290.7-Temp))*4.156e-09 
            ELSE IF (Temp .ge. 290.7 .AND. Temp .lt. 290.8) THEN 
                beta = 2.024e-07 + (1.0 - 10.0*(290.8-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 290.8 .AND. Temp .lt. 290.9) THEN 
                beta = 2.024e-07 + (1.0 - 10.0*(290.9-Temp))*-4.156e-09 
            ELSE IF (Temp .ge. 290.9 .AND. Temp .lt. 291.0) THEN 
                beta = 1.983e-07 + (1.0 - 10.0*(291.0-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 291.0 .AND. Temp .lt. 291.1) THEN 
                beta = 1.983e-07 + (1.0 - 10.0*(291.1-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 291.1 .AND. Temp .lt. 291.2) THEN 
                beta = 1.983e-07 + (1.0 - 10.0*(291.2-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 291.2 .AND. Temp .lt. 291.3) THEN 
                beta = 1.983e-07 + (1.0 - 10.0*(291.3-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 291.3 .AND. Temp .lt. 291.4) THEN 
                beta = 1.983e-07 + (1.0 - 10.0*(291.4-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 291.4 .AND. Temp .lt. 291.5) THEN 
                beta = 1.983e-07 + (1.0 - 10.0*(291.5-Temp))*-4.071e-09 
            ELSE IF (Temp .ge. 291.5 .AND. Temp .lt. 291.6) THEN 
                beta = 1.942e-07 + (1.0 - 10.0*(291.6-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 291.6 .AND. Temp .lt. 291.7) THEN 
                beta = 1.942e-07 + (1.0 - 10.0*(291.7-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 291.7 .AND. Temp .lt. 291.8) THEN 
                beta = 1.942e-07 + (1.0 - 10.0*(291.8-Temp))*-3.987e-09 
            ELSE IF (Temp .ge. 291.8 .AND. Temp .lt. 291.9) THEN 
                beta = 1.902e-07 + (1.0 - 10.0*(291.9-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 291.9 .AND. Temp .lt. 292.0) THEN 
                beta = 1.902e-07 + (1.0 - 10.0*(292.0-Temp))*-3.905e-09 
            ELSE IF (Temp .ge. 292.0 .AND. Temp .lt. 292.1) THEN 
                beta = 1.863e-07 + (1.0 - 10.0*(292.1-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 292.1 .AND. Temp .lt. 292.2) THEN 
                beta = 1.863e-07 + (1.0 - 10.0*(292.2-Temp))*-3.825e-09 
            ELSE IF (Temp .ge. 292.2 .AND. Temp .lt. 292.3) THEN 
                beta = 1.825e-07 + (1.0 - 10.0*(292.3-Temp))*-3.747e-09 
            ELSE IF (Temp .ge. 292.3 .AND. Temp .lt. 292.4) THEN 
                beta = 1.788e-07 + (1.0 - 10.0*(292.4-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 292.4 .AND. Temp .lt. 292.5) THEN 
                beta = 1.788e-07 + (1.0 - 10.0*(292.5-Temp))*-3.670e-09 
            ELSE IF (Temp .ge. 292.5 .AND. Temp .lt. 292.6) THEN 
                beta = 1.751e-07 + (1.0 - 10.0*(292.6-Temp))*-3.595e-09 
            ELSE IF (Temp .ge. 292.6 .AND. Temp .lt. 292.7) THEN 
                beta = 1.715e-07 + (1.0 - 10.0*(292.7-Temp))*-3.521e-09 
            ELSE IF (Temp .ge. 292.7 .AND. Temp .lt. 292.8) THEN 
                beta = 1.680e-07 + (1.0 - 10.0*(292.8-Temp))*-3.448e-09 
            ELSE IF (Temp .ge. 292.8 .AND. Temp .lt. 292.9) THEN 
                beta = 1.645e-07 + (1.0 - 10.0*(292.9-Temp))*-3.378e-09 
            ELSE IF (Temp .ge. 292.9 .AND. Temp .lt. 293.0) THEN 
                beta = 1.611e-07 + (1.0 - 10.0*(293.0-Temp))*-3.308e-09 
            ELSE IF (Temp .ge. 293.0 .AND. Temp .lt. 293.1) THEN 
                beta = 1.578e-07 + (1.0 - 10.0*(293.1-Temp))*-3.240e-09 
            ELSE IF (Temp .ge. 293.1 .AND. Temp .lt. 293.2) THEN 
                beta = 1.546e-07 + (1.0 - 10.0*(293.2-Temp))*-3.174e-09 
            ELSE IF (Temp .ge. 293.2 .AND. Temp .lt. 293.3) THEN 
                beta = 1.514e-07 + (1.0 - 10.0*(293.3-Temp))*-6.154e-09 
            ELSE IF (Temp .ge. 293.3 .AND. Temp .lt. 293.4) THEN 
                beta = 1.453e-07 + (1.0 - 10.0*(293.4-Temp))*-2.982e-09 
            ELSE IF (Temp .ge. 293.4 .AND. Temp .lt. 293.5) THEN 
                beta = 1.423e-07 + (1.0 - 10.0*(293.5-Temp))*-2.921e-09 
            ELSE IF (Temp .ge. 293.5 .AND. Temp .lt. 293.6) THEN 
                beta = 1.394e-07 + (1.0 - 10.0*(293.6-Temp))*-5.664e-09 
            ELSE IF (Temp .ge. 293.6 .AND. Temp .lt. 293.7) THEN 
                beta = 1.337e-07 + (1.0 - 10.0*(293.7-Temp))*-2.745e-09 
            ELSE IF (Temp .ge. 293.7 .AND. Temp .lt. 293.8) THEN 
                beta = 1.310e-07 + (1.0 - 10.0*(293.8-Temp))*-5.322e-09 
            ELSE IF (Temp .ge. 293.8 .AND. Temp .lt. 293.9) THEN 
                beta = 1.256e-07 + (1.0 - 10.0*(293.9-Temp))*-2.579e-09 
            ELSE IF (Temp .ge. 293.9 .AND. Temp .lt. 294.0) THEN 
                beta = 1.231e-07 + (1.0 - 10.0*(294.0-Temp))*-5.001e-09 
            ELSE IF (Temp .ge. 294.0 .AND. Temp .lt. 294.1) THEN 
                beta = 1.181e-07 + (1.0 - 10.0*(294.1-Temp))*-4.798e-09 
            ELSE IF (Temp .ge. 294.1 .AND. Temp .lt. 294.2) THEN 
                beta = 1.133e-07 + (1.0 - 10.0*(294.2-Temp))*-4.603e-09 
            ELSE IF (Temp .ge. 294.2 .AND. Temp .lt. 294.3) THEN 
                beta = 1.087e-07 + (1.0 - 10.0*(294.3-Temp))*-4.416e-09 
            ELSE IF (Temp .ge. 294.3 .AND. Temp .lt. 294.4) THEN 
                beta = 1.042e-07 + (1.0 - 10.0*(294.4-Temp))*-4.236e-09 
            ELSE IF (Temp .ge. 294.4 .AND. Temp .lt. 294.5) THEN 
                beta = 1.000e-07 + (1.0 - 10.0*(294.5-Temp))*-4.064e-09 
            ELSE IF (Temp .ge. 294.5 .AND. Temp .lt. 294.6) THEN 
                beta = 9.594e-08 + (1.0 - 10.0*(294.6-Temp))*-3.899e-09 
            ELSE IF (Temp .ge. 294.6 .AND. Temp .lt. 294.7) THEN 
                beta = 9.204e-08 + (1.0 - 10.0*(294.7-Temp))*-3.740e-09 
            ELSE IF (Temp .ge. 294.7 .AND. Temp .lt. 294.8) THEN 
                beta = 8.830e-08 + (1.0 - 10.0*(294.8-Temp))*-3.588e-09 
            ELSE IF (Temp .ge. 294.8 .AND. Temp .lt. 294.9) THEN 
                beta = 8.471e-08 + (1.0 - 10.0*(294.9-Temp))*-5.111e-09 
            ELSE IF (Temp .ge. 294.9 .AND. Temp .lt. 295.0) THEN 
                beta = 7.960e-08 + (1.0 - 10.0*(295.0-Temp))*-3.235e-09 
            ELSE IF (Temp .ge. 295.0 .AND. Temp .lt. 295.1) THEN 
                beta = 7.636e-08 + (1.0 - 10.0*(295.1-Temp))*-4.607e-09 
            ELSE IF (Temp .ge. 295.1 .AND. Temp .lt. 295.2) THEN 
                beta = 7.176e-08 + (1.0 - 10.0*(295.2-Temp))*-2.916e-09 
            ELSE IF (Temp .ge. 295.2 .AND. Temp .lt. 295.3) THEN 
                beta = 6.884e-08 + (1.0 - 10.0*(295.3-Temp))*-4.153e-09 
            ELSE IF (Temp .ge. 295.3 .AND. Temp .lt. 295.4) THEN 
                beta = 6.469e-08 + (1.0 - 10.0*(295.4-Temp))*-3.903e-09 
            ELSE IF (Temp .ge. 295.4 .AND. Temp .lt. 295.5) THEN 
                beta = 6.078e-08 + (1.0 - 10.0*(295.5-Temp))*-3.667e-09 
            ELSE IF (Temp .ge. 295.5 .AND. Temp .lt. 295.6) THEN 
                beta = 5.712e-08 + (1.0 - 10.0*(295.6-Temp))*-3.446e-09 
            ELSE IF (Temp .ge. 295.6 .AND. Temp .lt. 295.7) THEN 
                beta = 5.367e-08 + (1.0 - 10.0*(295.7-Temp))*-3.238e-09 
            ELSE IF (Temp .ge. 295.7 .AND. Temp .lt. 295.8) THEN 
                beta = 5.043e-08 + (1.0 - 10.0*(295.8-Temp))*-3.043e-09 
            ELSE IF (Temp .ge. 295.8 .AND. Temp .lt. 295.9) THEN 
                beta = 4.739e-08 + (1.0 - 10.0*(295.9-Temp))*-2.859e-09 
            ELSE IF (Temp .gt. 296.0) THEN 
                beta = 4.453e-08 
            ENDIF
