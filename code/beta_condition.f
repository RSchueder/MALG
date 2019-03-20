                IF (Temp .lt. 274.0) THEN 
                    beta = 1.094e-11 
                ELSE IF (Temp .ge. 274.0 .AND. Temp .lt. 274.1) THEN 
                    beta = 1.483e-11 + (1.0 - 10.0*(274.1-Temp))*4.998e-12 
                ELSE IF (Temp .ge. 274.1 .AND. Temp .lt. 274.2) THEN 
                    beta = 1.983e-11 + (1.0 - 10.0*(274.2-Temp))*6.682e-12 
                ELSE IF (Temp .ge. 274.2 .AND. Temp .lt. 274.3) THEN 
                    beta = 2.651e-11 + (1.0 - 10.0*(274.3-Temp))*8.447e-12 
                ELSE IF (Temp .ge. 274.3 .AND. Temp .lt. 274.4) THEN 
                    beta = 3.496e-11 + (1.0 - 10.0*(274.4-Temp))*1.051e-11 
                ELSE IF (Temp .ge. 274.4 .AND. Temp .lt. 274.5) THEN 
                    beta = 4.546e-11 + (1.0 - 10.0*(274.5-Temp))*1.285e-11 
                ELSE IF (Temp .ge. 274.5 .AND. Temp .lt. 274.6) THEN 
                    beta = 5.831e-11 + (1.0 - 10.0*(274.6-Temp))*1.648e-11 
                ELSE IF (Temp .ge. 274.6 .AND. Temp .lt. 274.7) THEN 
                    beta = 7.480e-11 + (1.0 - 10.0*(274.7-Temp))*1.982e-11 
                ELSE IF (Temp .ge. 274.7 .AND. Temp .lt. 274.8) THEN 
                    beta = 9.462e-11 + (1.0 - 10.0*(274.8-Temp))*2.343e-11 
                ELSE IF (Temp .ge. 274.8 .AND. Temp .lt. 274.9) THEN 
                    beta = 1.181e-10 + (1.0 - 10.0*(274.9-Temp))*2.924e-11 
                ELSE IF (Temp .ge. 274.9 .AND. Temp .lt. 275.0) THEN 
                    beta = 1.473e-10 + (1.0 - 10.0*(275.0-Temp))*3.395e-11 
                ELSE IF (Temp .ge. 275.0 .AND. Temp .lt. 275.1) THEN 
                    beta = 1.812e-10 + (1.0 - 10.0*(275.1-Temp))*4.178e-11 
                ELSE IF (Temp .ge. 275.1 .AND. Temp .lt. 275.2) THEN 
                    beta = 2.230e-10 + (1.0 - 10.0*(275.2-Temp))*4.764e-11 
                ELSE IF (Temp .ge. 275.2 .AND. Temp .lt. 275.3) THEN 
                    beta = 2.707e-10 + (1.0 - 10.0*(275.3-Temp))*5.782e-11 
                ELSE IF (Temp .ge. 275.3 .AND. Temp .lt. 275.4) THEN 
                    beta = 3.285e-10 + (1.0 - 10.0*(275.4-Temp))*6.470e-11 
                ELSE IF (Temp .ge. 275.4 .AND. Temp .lt. 275.5) THEN 
                    beta = 3.932e-10 + (1.0 - 10.0*(275.5-Temp))*7.744e-11 
                ELSE IF (Temp .ge. 275.5 .AND. Temp .lt. 275.6) THEN 
                    beta = 4.706e-10 + (1.0 - 10.0*(275.6-Temp))*8.496e-11 
                ELSE IF (Temp .ge. 275.6 .AND. Temp .lt. 275.7) THEN 
                    beta = 5.556e-10 + (1.0 - 10.0*(275.7-Temp))*1.003e-10 
                ELSE IF (Temp .ge. 275.7 .AND. Temp .lt. 275.8) THEN 
                    beta = 6.559e-10 + (1.0 - 10.0*(275.8-Temp))*1.078e-10 
                ELSE IF (Temp .ge. 275.8 .AND. Temp .lt. 275.9) THEN 
                    beta = 7.636e-10 + (1.0 - 10.0*(275.9-Temp))*1.255e-10 
                ELSE IF (Temp .ge. 275.9 .AND. Temp .lt. 276.0) THEN 
                    beta = 8.891e-10 + (1.0 - 10.0*(276.0-Temp))*1.461e-10 
                ELSE IF (Temp .ge. 276.0 .AND. Temp .lt. 276.1) THEN 
                    beta = 1.035e-09 + (1.0 - 10.0*(276.1-Temp))*1.535e-10 
                ELSE IF (Temp .ge. 276.1 .AND. Temp .lt. 276.2) THEN 
                    beta = 1.189e-09 + (1.0 - 10.0*(276.2-Temp))*1.763e-10 
                ELSE IF (Temp .ge. 276.2 .AND. Temp .lt. 276.3) THEN 
                    beta = 1.365e-09 + (1.0 - 10.0*(276.3-Temp))*1.809e-10 
                ELSE IF (Temp .ge. 276.3 .AND. Temp .lt. 276.4) THEN 
                    beta = 1.546e-09 + (1.0 - 10.0*(276.4-Temp))*2.293e-10 
                ELSE IF (Temp .ge. 276.4 .AND. Temp .lt. 276.5) THEN 
                    beta = 1.775e-09 + (1.0 - 10.0*(276.5-Temp))*2.353e-10 
                ELSE IF (Temp .ge. 276.5 .AND. Temp .lt. 276.6) THEN 
                    beta = 2.010e-09 + (1.0 - 10.0*(276.6-Temp))*2.352e-10 
                ELSE IF (Temp .ge. 276.6 .AND. Temp .lt. 276.7) THEN 
                    beta = 2.246e-09 + (1.0 - 10.0*(276.7-Temp))*2.976e-10 
                ELSE IF (Temp .ge. 276.7 .AND. Temp .lt. 276.8) THEN 
                    beta = 2.543e-09 + (1.0 - 10.0*(276.8-Temp))*2.975e-10 
                ELSE IF (Temp .ge. 276.8 .AND. Temp .lt. 276.9) THEN 
                    beta = 2.841e-09 + (1.0 - 10.0*(276.9-Temp))*2.888e-10 
                ELSE IF (Temp .ge. 276.9 .AND. Temp .lt. 277.0) THEN 
                    beta = 3.130e-09 + (1.0 - 10.0*(277.0-Temp))*3.661e-10 
                ELSE IF (Temp .ge. 277.0 .AND. Temp .lt. 277.1) THEN 
                    beta = 3.496e-09 + (1.0 - 10.0*(277.1-Temp))*3.553e-10 
                ELSE IF (Temp .ge. 277.1 .AND. Temp .lt. 277.2) THEN 
                    beta = 3.851e-09 + (1.0 - 10.0*(277.2-Temp))*3.914e-10 
                ELSE IF (Temp .ge. 277.2 .AND. Temp .lt. 277.3) THEN 
                    beta = 4.243e-09 + (1.0 - 10.0*(277.3-Temp))*4.312e-10 
                ELSE IF (Temp .ge. 277.3 .AND. Temp .lt. 277.4) THEN 
                    beta = 4.674e-09 + (1.0 - 10.0*(277.4-Temp))*4.751e-10 
                ELSE IF (Temp .ge. 277.4 .AND. Temp .lt. 277.5) THEN 
                    beta = 5.149e-09 + (1.0 - 10.0*(277.5-Temp))*4.455e-10 
                ELSE IF (Temp .ge. 277.5 .AND. Temp .lt. 277.6) THEN 
                    beta = 5.594e-09 + (1.0 - 10.0*(277.6-Temp))*4.840e-10 
                ELSE IF (Temp .ge. 277.6 .AND. Temp .lt. 277.7) THEN 
                    beta = 6.078e-09 + (1.0 - 10.0*(277.7-Temp))*5.259e-10 
                ELSE IF (Temp .ge. 277.7 .AND. Temp .lt. 277.8) THEN 
                    beta = 6.604e-09 + (1.0 - 10.0*(277.8-Temp))*5.714e-10 
                ELSE IF (Temp .ge. 277.8 .AND. Temp .lt. 277.9) THEN 
                    beta = 7.176e-09 + (1.0 - 10.0*(277.9-Temp))*6.208e-10 
                ELSE IF (Temp .ge. 277.9 .AND. Temp .lt. 278.0) THEN 
                    beta = 7.796e-09 + (1.0 - 10.0*(278.0-Temp))*5.582e-10 
                ELSE IF (Temp .ge. 278.0 .AND. Temp .lt. 278.1) THEN 
                    beta = 8.355e-09 + (1.0 - 10.0*(278.1-Temp))*7.228e-10 
                ELSE IF (Temp .ge. 278.1 .AND. Temp .lt. 278.2) THEN 
                    beta = 9.077e-09 + (1.0 - 10.0*(278.2-Temp))*6.499e-10 
                ELSE IF (Temp .ge. 278.2 .AND. Temp .lt. 278.3) THEN 
                    beta = 9.727e-09 + (1.0 - 10.0*(278.3-Temp))*6.964e-10 
                ELSE IF (Temp .ge. 278.3 .AND. Temp .lt. 278.4) THEN 
                    beta = 1.042e-08 + (1.0 - 10.0*(278.4-Temp))*7.463e-10 
                ELSE IF (Temp .ge. 278.4 .AND. Temp .lt. 278.5) THEN 
                    beta = 1.117e-08 + (1.0 - 10.0*(278.5-Temp))*6.353e-10 
                ELSE IF (Temp .ge. 278.5 .AND. Temp .lt. 278.6) THEN 
                    beta = 1.181e-08 + (1.0 - 10.0*(278.6-Temp))*8.452e-10 
                ELSE IF (Temp .ge. 278.6 .AND. Temp .lt. 278.7) THEN 
                    beta = 1.265e-08 + (1.0 - 10.0*(278.7-Temp))*7.195e-10 
                ELSE IF (Temp .ge. 278.7 .AND. Temp .lt. 278.8) THEN 
                    beta = 1.337e-08 + (1.0 - 10.0*(278.8-Temp))*7.604e-10 
                ELSE IF (Temp .ge. 278.8 .AND. Temp .lt. 278.9) THEN 
                    beta = 1.413e-08 + (1.0 - 10.0*(278.9-Temp))*1.012e-09 
                ELSE IF (Temp .ge. 278.9 .AND. Temp .lt. 279.0) THEN 
                    beta = 1.514e-08 + (1.0 - 10.0*(279.0-Temp))*8.612e-10 
                ELSE IF (Temp .ge. 279.0 .AND. Temp .lt. 279.1) THEN 
                    beta = 1.600e-08 + (1.0 - 10.0*(279.1-Temp))*9.102e-10 
                ELSE IF (Temp .ge. 279.1 .AND. Temp .lt. 279.2) THEN 
                    beta = 1.691e-08 + (1.0 - 10.0*(279.2-Temp))*7.165e-10 
                ELSE IF (Temp .ge. 279.2 .AND. Temp .lt. 279.3) THEN 
                    beta = 1.763e-08 + (1.0 - 10.0*(279.3-Temp))*1.003e-09 
                ELSE IF (Temp .ge. 279.3 .AND. Temp .lt. 279.4) THEN 
                    beta = 1.863e-08 + (1.0 - 10.0*(279.4-Temp))*1.060e-09 
                ELSE IF (Temp .ge. 279.4 .AND. Temp .lt. 279.5) THEN 
                    beta = 1.969e-08 + (1.0 - 10.0*(279.5-Temp))*8.342e-10 
                ELSE IF (Temp .ge. 279.5 .AND. Temp .lt. 279.6) THEN 
                    beta = 2.053e-08 + (1.0 - 10.0*(279.6-Temp))*1.167e-09 
                ELSE IF (Temp .ge. 279.6 .AND. Temp .lt. 279.7) THEN 
                    beta = 2.169e-08 + (1.0 - 10.0*(279.7-Temp))*9.190e-10 
                ELSE IF (Temp .ge. 279.7 .AND. Temp .lt. 279.8) THEN 
                    beta = 2.261e-08 + (1.0 - 10.0*(279.8-Temp))*9.579e-10 
                ELSE IF (Temp .ge. 279.8 .AND. Temp .lt. 279.9) THEN 
                    beta = 2.357e-08 + (1.0 - 10.0*(279.9-Temp))*9.985e-10 
                ELSE IF (Temp .ge. 279.9 .AND. Temp .lt. 280.0) THEN 
                    beta = 2.457e-08 + (1.0 - 10.0*(280.0-Temp))*1.397e-09 
                ELSE IF (Temp .ge. 280.0 .AND. Temp .lt. 280.1) THEN 
                    beta = 2.597e-08 + (1.0 - 10.0*(280.1-Temp))*7.282e-10 
                ELSE IF (Temp .ge. 280.1 .AND. Temp .lt. 280.2) THEN 
                    beta = 2.669e-08 + (1.0 - 10.0*(280.2-Temp))*1.131e-09 
                ELSE IF (Temp .ge. 280.2 .AND. Temp .lt. 280.3) THEN 
                    beta = 2.783e-08 + (1.0 - 10.0*(280.3-Temp))*1.179e-09 
                ELSE IF (Temp .ge. 280.3 .AND. Temp .lt. 280.4) THEN 
                    beta = 2.900e-08 + (1.0 - 10.0*(280.4-Temp))*1.229e-09 
                ELSE IF (Temp .ge. 280.4 .AND. Temp .lt. 280.5) THEN 
                    beta = 3.023e-08 + (1.0 - 10.0*(280.5-Temp))*1.281e-09 
                ELSE IF (Temp .ge. 280.5 .AND. Temp .lt. 280.6) THEN 
                    beta = 3.151e-08 + (1.0 - 10.0*(280.6-Temp))*8.838e-10 
                ELSE IF (Temp .ge. 280.6 .AND. Temp .lt. 280.7) THEN 
                    beta = 3.240e-08 + (1.0 - 10.0*(280.7-Temp))*1.372e-09 
                ELSE IF (Temp .ge. 280.7 .AND. Temp .lt. 280.8) THEN 
                    beta = 3.377e-08 + (1.0 - 10.0*(280.8-Temp))*9.471e-10 
                ELSE IF (Temp .ge. 280.8 .AND. Temp .lt. 280.9) THEN 
                    beta = 3.472e-08 + (1.0 - 10.0*(280.9-Temp))*1.471e-09 
                ELSE IF (Temp .ge. 280.9 .AND. Temp .lt. 281.0) THEN 
                    beta = 3.619e-08 + (1.0 - 10.0*(281.0-Temp))*1.015e-09 
                ELSE IF (Temp .ge. 281.0 .AND. Temp .lt. 281.1) THEN 
                    beta = 3.720e-08 + (1.0 - 10.0*(281.1-Temp))*1.576e-09 
                ELSE IF (Temp .ge. 281.1 .AND. Temp .lt. 281.2) THEN 
                    beta = 3.878e-08 + (1.0 - 10.0*(281.2-Temp))*1.088e-09 
                ELSE IF (Temp .ge. 281.2 .AND. Temp .lt. 281.3) THEN 
                    beta = 3.987e-08 + (1.0 - 10.0*(281.3-Temp))*1.118e-09 
                ELSE IF (Temp .ge. 281.3 .AND. Temp .lt. 281.4) THEN 
                    beta = 4.098e-08 + (1.0 - 10.0*(281.4-Temp))*1.149e-09 
                ELSE IF (Temp .ge. 281.4 .AND. Temp .lt. 281.5) THEN 
                    beta = 4.213e-08 + (1.0 - 10.0*(281.5-Temp))*1.182e-09 
                ELSE IF (Temp .ge. 281.5 .AND. Temp .lt. 281.6) THEN 
                    beta = 4.331e-08 + (1.0 - 10.0*(281.6-Temp))*1.215e-09 
                ELSE IF (Temp .ge. 281.6 .AND. Temp .lt. 281.7) THEN 
                    beta = 4.453e-08 + (1.0 - 10.0*(281.7-Temp))*1.886e-09 
                ELSE IF (Temp .ge. 281.7 .AND. Temp .lt. 281.8) THEN 
                    beta = 4.642e-08 + (1.0 - 10.0*(281.8-Temp))*6.464e-10 
                ELSE IF (Temp .ge. 281.8 .AND. Temp .lt. 281.9) THEN 
                    beta = 4.706e-08 + (1.0 - 10.0*(281.9-Temp))*1.320e-09 
                ELSE IF (Temp .ge. 281.9 .AND. Temp .lt. 282.0) THEN 
                    beta = 4.838e-08 + (1.0 - 10.0*(282.0-Temp))*1.357e-09 
                ELSE IF (Temp .ge. 282.0 .AND. Temp .lt. 282.1) THEN 
                    beta = 4.974e-08 + (1.0 - 10.0*(282.1-Temp))*1.395e-09 
                ELSE IF (Temp .ge. 282.1 .AND. Temp .lt. 282.2) THEN 
                    beta = 5.113e-08 + (1.0 - 10.0*(282.2-Temp))*1.434e-09 
                ELSE IF (Temp .ge. 282.2 .AND. Temp .lt. 282.3) THEN 
                    beta = 5.257e-08 + (1.0 - 10.0*(282.3-Temp))*1.474e-09 
                ELSE IF (Temp .ge. 282.3 .AND. Temp .lt. 282.4) THEN 
                    beta = 5.404e-08 + (1.0 - 10.0*(282.4-Temp))*1.516e-09 
                ELSE IF (Temp .ge. 282.4 .AND. Temp .lt. 282.5) THEN 
                    beta = 5.556e-08 + (1.0 - 10.0*(282.5-Temp))*7.737e-10 
                ELSE IF (Temp .ge. 282.5 .AND. Temp .lt. 282.6) THEN 
                    beta = 5.633e-08 + (1.0 - 10.0*(282.6-Temp))*1.580e-09 
                ELSE IF (Temp .ge. 282.6 .AND. Temp .lt. 282.7) THEN 
                    beta = 5.791e-08 + (1.0 - 10.0*(282.7-Temp))*1.624e-09 
                ELSE IF (Temp .ge. 282.7 .AND. Temp .lt. 282.8) THEN 
                    beta = 5.954e-08 + (1.0 - 10.0*(282.8-Temp))*8.291e-10 
                ELSE IF (Temp .ge. 282.8 .AND. Temp .lt. 282.9) THEN 
                    beta = 6.036e-08 + (1.0 - 10.0*(282.9-Temp))*1.693e-09 
                ELSE IF (Temp .ge. 282.9 .AND. Temp .lt. 283.0) THEN 
                    beta = 6.206e-08 + (1.0 - 10.0*(283.0-Temp))*8.642e-10 
                ELSE IF (Temp .ge. 283.0 .AND. Temp .lt. 283.1) THEN 
                    beta = 6.292e-08 + (1.0 - 10.0*(283.1-Temp))*1.765e-09 
                ELSE IF (Temp .ge. 283.1 .AND. Temp .lt. 283.2) THEN 
                    beta = 6.469e-08 + (1.0 - 10.0*(283.2-Temp))*9.008e-10 
                ELSE IF (Temp .ge. 283.2 .AND. Temp .lt. 283.3) THEN 
                    beta = 6.559e-08 + (1.0 - 10.0*(283.3-Temp))*1.839e-09 
                ELSE IF (Temp .ge. 283.3 .AND. Temp .lt. 283.4) THEN 
                    beta = 6.743e-08 + (1.0 - 10.0*(283.4-Temp))*9.389e-10 
                ELSE IF (Temp .ge. 283.4 .AND. Temp .lt. 283.5) THEN 
                    beta = 6.837e-08 + (1.0 - 10.0*(283.5-Temp))*1.917e-09 
                ELSE IF (Temp .ge. 283.5 .AND. Temp .lt. 283.6) THEN 
                    beta = 7.028e-08 + (1.0 - 10.0*(283.6-Temp))*9.787e-10 
                ELSE IF (Temp .ge. 283.6 .AND. Temp .lt. 283.7) THEN 
                    beta = 7.126e-08 + (1.0 - 10.0*(283.7-Temp))*9.923e-10 
                ELSE IF (Temp .ge. 283.7 .AND. Temp .lt. 283.8) THEN 
                    beta = 7.225e-08 + (1.0 - 10.0*(283.8-Temp))*2.026e-09 
                ELSE IF (Temp .ge. 283.8 .AND. Temp .lt. 283.9) THEN 
                    beta = 7.428e-08 + (1.0 - 10.0*(283.9-Temp))*1.034e-09 
                ELSE IF (Temp .ge. 283.9 .AND. Temp .lt. 284.0) THEN 
                    beta = 7.531e-08 + (1.0 - 10.0*(284.0-Temp))*1.049e-09 
                ELSE IF (Temp .ge. 284.0 .AND. Temp .lt. 284.1) THEN 
                    beta = 7.636e-08 + (1.0 - 10.0*(284.1-Temp))*1.063e-09 
                ELSE IF (Temp .ge. 284.1 .AND. Temp .lt. 284.2) THEN 
                    beta = 7.743e-08 + (1.0 - 10.0*(284.2-Temp))*2.171e-09 
                ELSE IF (Temp .ge. 284.2 .AND. Temp .lt. 284.3) THEN 
                    beta = 7.960e-08 + (1.0 - 10.0*(284.3-Temp))*1.108e-09 
                ELSE IF (Temp .ge. 284.3 .AND. Temp .lt. 284.4) THEN 
                    beta = 8.071e-08 + (1.0 - 10.0*(284.4-Temp))*1.124e-09 
                ELSE IF (Temp .ge. 284.4 .AND. Temp .lt. 284.5) THEN 
                    beta = 8.183e-08 + (1.0 - 10.0*(284.5-Temp))*1.140e-09 
                ELSE IF (Temp .ge. 284.5 .AND. Temp .lt. 284.6) THEN 
                    beta = 8.297e-08 + (1.0 - 10.0*(284.6-Temp))*1.155e-09 
                ELSE IF (Temp .ge. 284.6 .AND. Temp .lt. 284.7) THEN 
                    beta = 8.412e-08 + (1.0 - 10.0*(284.7-Temp))*1.171e-09 
                ELSE IF (Temp .ge. 284.7 .AND. Temp .lt. 284.8) THEN 
                    beta = 8.530e-08 + (1.0 - 10.0*(284.8-Temp))*1.188e-09 
                ELSE IF (Temp .ge. 284.8 .AND. Temp .lt. 284.9) THEN 
                    beta = 8.648e-08 + (1.0 - 10.0*(284.9-Temp))*1.204e-09 
                ELSE IF (Temp .ge. 284.9 .AND. Temp .lt. 285.0) THEN 
                    beta = 8.769e-08 + (1.0 - 10.0*(285.0-Temp))*1.221e-09 
                ELSE IF (Temp .ge. 285.0 .AND. Temp .lt. 285.1) THEN 
                    beta = 8.891e-08 + (1.0 - 10.0*(285.1-Temp))*1.238e-09 
                ELSE IF (Temp .ge. 285.1 .AND. Temp .lt. 285.2) THEN 
                    beta = 9.015e-08 + (1.0 - 10.0*(285.2-Temp))*1.255e-09 
                ELSE IF (Temp .ge. 285.2 .AND. Temp .lt. 285.3) THEN 
                    beta = 9.140e-08 + (1.0 - 10.0*(285.3-Temp))*1.273e-09 
                ELSE IF (Temp .ge. 285.3 .AND. Temp .lt. 285.4) THEN 
                    beta = 9.268e-08 + (1.0 - 10.0*(285.4-Temp))*1.291e-09 
                ELSE IF (Temp .ge. 285.4 .AND. Temp .lt. 285.5) THEN 
                    beta = 9.397e-08 + (1.0 - 10.0*(285.5-Temp))*1.309e-09 
                ELSE IF (Temp .ge. 285.5 .AND. Temp .lt. 285.6) THEN 
                    beta = 9.528e-08 + (1.0 - 10.0*(285.6-Temp))*1.327e-09 
                ELSE IF (Temp .ge. 285.6 .AND. Temp .lt. 285.7) THEN 
                    beta = 9.660e-08 + (1.0 - 10.0*(285.7-Temp))*1.345e-09 
                ELSE IF (Temp .ge. 285.7 .AND. Temp .lt. 285.8) THEN 
                    beta = 9.795e-08 + (1.0 - 10.0*(285.8-Temp))*1.364e-09 
                ELSE IF (Temp .ge. 285.8 .AND. Temp .lt. 285.9) THEN 
                    beta = 9.931e-08 + (1.0 - 10.0*(285.9-Temp))*1.383e-09 
                ELSE IF (Temp .ge. 285.9 .AND. Temp .lt. 286.0) THEN 
                    beta = 1.007e-07 + (1.0 - 10.0*(286.0-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 286.0 .AND. Temp .lt. 286.1) THEN 
                    beta = 1.007e-07 + (1.0 - 10.0*(286.1-Temp))*1.402e-09 
                ELSE IF (Temp .ge. 286.1 .AND. Temp .lt. 286.2) THEN 
                    beta = 1.021e-07 + (1.0 - 10.0*(286.2-Temp))*1.422e-09 
                ELSE IF (Temp .ge. 286.2 .AND. Temp .lt. 286.3) THEN 
                    beta = 1.035e-07 + (1.0 - 10.0*(286.3-Temp))*1.442e-09 
                ELSE IF (Temp .ge. 286.3 .AND. Temp .lt. 286.4) THEN 
                    beta = 1.050e-07 + (1.0 - 10.0*(286.4-Temp))*1.462e-09 
                ELSE IF (Temp .ge. 286.4 .AND. Temp .lt. 286.5) THEN 
                    beta = 1.064e-07 + (1.0 - 10.0*(286.5-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 286.5 .AND. Temp .lt. 286.6) THEN 
                    beta = 1.064e-07 + (1.0 - 10.0*(286.6-Temp))*1.482e-09 
                ELSE IF (Temp .ge. 286.6 .AND. Temp .lt. 286.7) THEN 
                    beta = 1.079e-07 + (1.0 - 10.0*(286.7-Temp))*1.503e-09 
                ELSE IF (Temp .ge. 286.7 .AND. Temp .lt. 286.8) THEN 
                    beta = 1.094e-07 + (1.0 - 10.0*(286.8-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 286.8 .AND. Temp .lt. 286.9) THEN 
                    beta = 1.094e-07 + (1.0 - 10.0*(286.9-Temp))*1.524e-09 
                ELSE IF (Temp .ge. 286.9 .AND. Temp .lt. 287.0) THEN 
                    beta = 1.109e-07 + (1.0 - 10.0*(287.0-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 287.0 .AND. Temp .lt. 287.1) THEN 
                    beta = 1.109e-07 + (1.0 - 10.0*(287.1-Temp))*1.545e-09 
                ELSE IF (Temp .ge. 287.1 .AND. Temp .lt. 287.2) THEN 
                    beta = 1.125e-07 + (1.0 - 10.0*(287.2-Temp))*1.566e-09 
                ELSE IF (Temp .ge. 287.2 .AND. Temp .lt. 287.3) THEN 
                    beta = 1.140e-07 + (1.0 - 10.0*(287.3-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 287.3 .AND. Temp .lt. 287.4) THEN 
                    beta = 1.140e-07 + (1.0 - 10.0*(287.4-Temp))*1.588e-09 
                ELSE IF (Temp .ge. 287.4 .AND. Temp .lt. 287.5) THEN 
                    beta = 1.156e-07 + (1.0 - 10.0*(287.5-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 287.5 .AND. Temp .lt. 287.6) THEN 
                    beta = 1.156e-07 + (1.0 - 10.0*(287.6-Temp))*1.610e-09 
                ELSE IF (Temp .ge. 287.6 .AND. Temp .lt. 287.7) THEN 
                    beta = 1.172e-07 + (1.0 - 10.0*(287.7-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 287.7 .AND. Temp .lt. 287.8) THEN 
                    beta = 1.172e-07 + (1.0 - 10.0*(287.8-Temp))*1.633e-09 
                ELSE IF (Temp .ge. 287.8 .AND. Temp .lt. 287.9) THEN 
                    beta = 1.189e-07 + (1.0 - 10.0*(287.9-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 287.9 .AND. Temp .lt. 288.0) THEN 
                    beta = 1.189e-07 + (1.0 - 10.0*(288.0-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 288.0 .AND. Temp .lt. 288.1) THEN 
                    beta = 1.189e-07 + (1.0 - 10.0*(288.1-Temp))*1.655e-09 
                ELSE IF (Temp .ge. 288.1 .AND. Temp .lt. 288.2) THEN 
                    beta = 1.205e-07 + (1.0 - 10.0*(288.2-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 288.2 .AND. Temp .lt. 288.3) THEN 
                    beta = 1.205e-07 + (1.0 - 10.0*(288.3-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 288.3 .AND. Temp .lt. 288.4) THEN 
                    beta = 1.205e-07 + (1.0 - 10.0*(288.4-Temp))*1.678e-09 
                ELSE IF (Temp .ge. 288.4 .AND. Temp .lt. 288.5) THEN 
                    beta = 1.222e-07 + (1.0 - 10.0*(288.5-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 288.5 .AND. Temp .lt. 288.6) THEN 
                    beta = 1.222e-07 + (1.0 - 10.0*(288.6-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 288.6 .AND. Temp .lt. 288.7) THEN 
                    beta = 1.222e-07 + (1.0 - 10.0*(288.7-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 288.7 .AND. Temp .lt. 288.8) THEN 
                    beta = 1.222e-07 + (1.0 - 10.0*(288.8-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 288.8 .AND. Temp .lt. 288.9) THEN 
                    beta = 1.222e-07 + (1.0 - 10.0*(288.9-Temp))*1.702e-09 
                ELSE IF (Temp .ge. 288.9 .AND. Temp .lt. 289.0) THEN 
                    beta = 1.239e-07 + (1.0 - 10.0*(289.0-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 289.0 .AND. Temp .lt. 289.1) THEN 
                    beta = 1.239e-07 + (1.0 - 10.0*(289.1-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 289.1 .AND. Temp .lt. 289.2) THEN 
                    beta = 1.239e-07 + (1.0 - 10.0*(289.2-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 289.2 .AND. Temp .lt. 289.3) THEN 
                    beta = 1.239e-07 + (1.0 - 10.0*(289.3-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 289.3 .AND. Temp .lt. 289.4) THEN 
                    beta = 1.239e-07 + (1.0 - 10.0*(289.4-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 289.4 .AND. Temp .lt. 289.5) THEN 
                    beta = 1.239e-07 + (1.0 - 10.0*(289.5-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 289.5 .AND. Temp .lt. 289.6) THEN 
                    beta = 1.239e-07 + (1.0 - 10.0*(289.6-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 289.6 .AND. Temp .lt. 289.7) THEN 
                    beta = 1.239e-07 + (1.0 - 10.0*(289.7-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 289.7 .AND. Temp .lt. 289.8) THEN 
                    beta = 1.239e-07 + (1.0 - 10.0*(289.8-Temp))*-1.702e-09 
                ELSE IF (Temp .ge. 289.8 .AND. Temp .lt. 289.9) THEN 
                    beta = 1.222e-07 + (1.0 - 10.0*(289.9-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 289.9 .AND. Temp .lt. 290.0) THEN 
                    beta = 1.222e-07 + (1.0 - 10.0*(290.0-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 290.0 .AND. Temp .lt. 290.1) THEN 
                    beta = 1.222e-07 + (1.0 - 10.0*(290.1-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 290.1 .AND. Temp .lt. 290.2) THEN 
                    beta = 1.222e-07 + (1.0 - 10.0*(290.2-Temp))*-1.678e-09 
                ELSE IF (Temp .ge. 290.2 .AND. Temp .lt. 290.3) THEN 
                    beta = 1.205e-07 + (1.0 - 10.0*(290.3-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 290.3 .AND. Temp .lt. 290.4) THEN 
                    beta = 1.205e-07 + (1.0 - 10.0*(290.4-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 290.4 .AND. Temp .lt. 290.5) THEN 
                    beta = 1.205e-07 + (1.0 - 10.0*(290.5-Temp))*-1.655e-09 
                ELSE IF (Temp .ge. 290.5 .AND. Temp .lt. 290.6) THEN 
                    beta = 1.189e-07 + (1.0 - 10.0*(290.6-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 290.6 .AND. Temp .lt. 290.7) THEN 
                    beta = 1.189e-07 + (1.0 - 10.0*(290.7-Temp))*-1.633e-09 
                ELSE IF (Temp .ge. 290.7 .AND. Temp .lt. 290.8) THEN 
                    beta = 1.172e-07 + (1.0 - 10.0*(290.8-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 290.8 .AND. Temp .lt. 290.9) THEN 
                    beta = 1.172e-07 + (1.0 - 10.0*(290.9-Temp))*-1.610e-09 
                ELSE IF (Temp .ge. 290.9 .AND. Temp .lt. 291.0) THEN 
                    beta = 1.156e-07 + (1.0 - 10.0*(291.0-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 291.0 .AND. Temp .lt. 291.1) THEN 
                    beta = 1.156e-07 + (1.0 - 10.0*(291.1-Temp))*-1.588e-09 
                ELSE IF (Temp .ge. 291.1 .AND. Temp .lt. 291.2) THEN 
                    beta = 1.140e-07 + (1.0 - 10.0*(291.2-Temp))*-1.566e-09 
                ELSE IF (Temp .ge. 291.2 .AND. Temp .lt. 291.3) THEN 
                    beta = 1.125e-07 + (1.0 - 10.0*(291.3-Temp))*0.000e+00 
                ELSE IF (Temp .ge. 291.3 .AND. Temp .lt. 291.4) THEN 
                    beta = 1.125e-07 + (1.0 - 10.0*(291.4-Temp))*-1.545e-09 
                ELSE IF (Temp .ge. 291.4 .AND. Temp .lt. 291.5) THEN 
                    beta = 1.109e-07 + (1.0 - 10.0*(291.5-Temp))*-1.524e-09 
                ELSE IF (Temp .ge. 291.5 .AND. Temp .lt. 291.6) THEN 
                    beta = 1.094e-07 + (1.0 - 10.0*(291.6-Temp))*-1.503e-09 
                ELSE IF (Temp .ge. 291.6 .AND. Temp .lt. 291.7) THEN 
                    beta = 1.079e-07 + (1.0 - 10.0*(291.7-Temp))*-1.482e-09 
                ELSE IF (Temp .ge. 291.7 .AND. Temp .lt. 291.8) THEN 
                    beta = 1.064e-07 + (1.0 - 10.0*(291.8-Temp))*-1.462e-09 
                ELSE IF (Temp .ge. 291.8 .AND. Temp .lt. 291.9) THEN 
                    beta = 1.050e-07 + (1.0 - 10.0*(291.9-Temp))*-1.442e-09 
                ELSE IF (Temp .ge. 291.9 .AND. Temp .lt. 292.0) THEN 
                    beta = 1.035e-07 + (1.0 - 10.0*(292.0-Temp))*-1.422e-09 
                ELSE IF (Temp .ge. 292.0 .AND. Temp .lt. 292.1) THEN 
                    beta = 1.021e-07 + (1.0 - 10.0*(292.1-Temp))*-1.402e-09 
                ELSE IF (Temp .ge. 292.1 .AND. Temp .lt. 292.2) THEN 
                    beta = 1.007e-07 + (1.0 - 10.0*(292.2-Temp))*-2.747e-09 
                ELSE IF (Temp .ge. 292.2 .AND. Temp .lt. 292.3) THEN 
                    beta = 9.795e-08 + (1.0 - 10.0*(292.3-Temp))*-1.345e-09 
                ELSE IF (Temp .ge. 292.3 .AND. Temp .lt. 292.4) THEN 
                    beta = 9.660e-08 + (1.0 - 10.0*(292.4-Temp))*-1.327e-09 
                ELSE IF (Temp .ge. 292.4 .AND. Temp .lt. 292.5) THEN 
                    beta = 9.528e-08 + (1.0 - 10.0*(292.5-Temp))*-2.599e-09 
                ELSE IF (Temp .ge. 292.5 .AND. Temp .lt. 292.6) THEN 
                    beta = 9.268e-08 + (1.0 - 10.0*(292.6-Temp))*-1.273e-09 
                ELSE IF (Temp .ge. 292.6 .AND. Temp .lt. 292.7) THEN 
                    beta = 9.140e-08 + (1.0 - 10.0*(292.7-Temp))*-2.493e-09 
                ELSE IF (Temp .ge. 292.7 .AND. Temp .lt. 292.8) THEN 
                    beta = 8.891e-08 + (1.0 - 10.0*(292.8-Temp))*-1.221e-09 
                ELSE IF (Temp .ge. 292.8 .AND. Temp .lt. 292.9) THEN 
                    beta = 8.769e-08 + (1.0 - 10.0*(292.9-Temp))*-2.392e-09 
                ELSE IF (Temp .ge. 292.9 .AND. Temp .lt. 293.0) THEN 
                    beta = 8.530e-08 + (1.0 - 10.0*(293.0-Temp))*-2.327e-09 
                ELSE IF (Temp .ge. 293.0 .AND. Temp .lt. 293.1) THEN 
                    beta = 8.297e-08 + (1.0 - 10.0*(293.1-Temp))*-2.263e-09 
                ELSE IF (Temp .ge. 293.1 .AND. Temp .lt. 293.2) THEN 
                    beta = 8.071e-08 + (1.0 - 10.0*(293.2-Temp))*-1.108e-09 
                ELSE IF (Temp .ge. 293.2 .AND. Temp .lt. 293.3) THEN 
                    beta = 7.960e-08 + (1.0 - 10.0*(293.3-Temp))*-2.171e-09 
                ELSE IF (Temp .ge. 293.3 .AND. Temp .lt. 293.4) THEN 
                    beta = 7.743e-08 + (1.0 - 10.0*(293.4-Temp))*-3.147e-09 
                ELSE IF (Temp .ge. 293.4 .AND. Temp .lt. 293.5) THEN 
                    beta = 7.428e-08 + (1.0 - 10.0*(293.5-Temp))*-2.026e-09 
                ELSE IF (Temp .ge. 293.5 .AND. Temp .lt. 293.6) THEN 
                    beta = 7.225e-08 + (1.0 - 10.0*(293.6-Temp))*-1.971e-09 
                ELSE IF (Temp .ge. 293.6 .AND. Temp .lt. 293.7) THEN 
                    beta = 7.028e-08 + (1.0 - 10.0*(293.7-Temp))*-1.917e-09 
                ELSE IF (Temp .ge. 293.7 .AND. Temp .lt. 293.8) THEN 
                    beta = 6.837e-08 + (1.0 - 10.0*(293.8-Temp))*-2.778e-09 
                ELSE IF (Temp .ge. 293.8 .AND. Temp .lt. 293.9) THEN 
                    beta = 6.559e-08 + (1.0 - 10.0*(293.9-Temp))*-1.789e-09 
                ELSE IF (Temp .ge. 293.9 .AND. Temp .lt. 294.0) THEN 
                    beta = 6.380e-08 + (1.0 - 10.0*(294.0-Temp))*-2.593e-09 
                ELSE IF (Temp .ge. 294.0 .AND. Temp .lt. 294.1) THEN 
                    beta = 6.120e-08 + (1.0 - 10.0*(294.1-Temp))*-1.670e-09 
                ELSE IF (Temp .ge. 294.1 .AND. Temp .lt. 294.2) THEN 
                    beta = 5.954e-08 + (1.0 - 10.0*(294.2-Temp))*-2.419e-09 
                ELSE IF (Temp .ge. 294.2 .AND. Temp .lt. 294.3) THEN 
                    beta = 5.712e-08 + (1.0 - 10.0*(294.3-Temp))*-2.321e-09 
                ELSE IF (Temp .ge. 294.3 .AND. Temp .lt. 294.4) THEN 
                    beta = 5.479e-08 + (1.0 - 10.0*(294.4-Temp))*-2.227e-09 
                ELSE IF (Temp .ge. 294.4 .AND. Temp .lt. 294.5) THEN 
                    beta = 5.257e-08 + (1.0 - 10.0*(294.5-Temp))*-2.136e-09 
                ELSE IF (Temp .ge. 294.5 .AND. Temp .lt. 294.6) THEN 
                    beta = 5.043e-08 + (1.0 - 10.0*(294.6-Temp))*-2.049e-09 
                ELSE IF (Temp .ge. 294.6 .AND. Temp .lt. 294.7) THEN 
                    beta = 4.838e-08 + (1.0 - 10.0*(294.7-Temp))*-1.966e-09 
                ELSE IF (Temp .ge. 294.7 .AND. Temp .lt. 294.8) THEN 
                    beta = 4.642e-08 + (1.0 - 10.0*(294.8-Temp))*-1.886e-09 
                ELSE IF (Temp .ge. 294.8 .AND. Temp .lt. 294.9) THEN 
                    beta = 4.453e-08 + (1.0 - 10.0*(294.9-Temp))*-2.396e-09 
                ELSE IF (Temp .ge. 294.9 .AND. Temp .lt. 295.0) THEN 
                    beta = 4.213e-08 + (1.0 - 10.0*(295.0-Temp))*-1.712e-09 
                ELSE IF (Temp .ge. 295.0 .AND. Temp .lt. 295.1) THEN 
                    beta = 4.042e-08 + (1.0 - 10.0*(295.1-Temp))*-2.175e-09 
                ELSE IF (Temp .ge. 295.1 .AND. Temp .lt. 295.2) THEN 
                    beta = 3.825e-08 + (1.0 - 10.0*(295.2-Temp))*-2.058e-09 
                ELSE IF (Temp .ge. 295.2 .AND. Temp .lt. 295.3) THEN 
                    beta = 3.619e-08 + (1.0 - 10.0*(295.3-Temp))*-1.947e-09 
                ELSE IF (Temp .ge. 295.3 .AND. Temp .lt. 295.4) THEN 
                    beta = 3.424e-08 + (1.0 - 10.0*(295.4-Temp))*-1.843e-09 
                ELSE IF (Temp .ge. 295.4 .AND. Temp .lt. 295.5) THEN 
                    beta = 3.240e-08 + (1.0 - 10.0*(295.5-Temp))*-1.743e-09 
                ELSE IF (Temp .ge. 295.5 .AND. Temp .lt. 295.6) THEN 
                    beta = 3.065e-08 + (1.0 - 10.0*(295.6-Temp))*-1.650e-09 
                ELSE IF (Temp .ge. 295.6 .AND. Temp .lt. 295.7) THEN 
                    beta = 2.900e-08 + (1.0 - 10.0*(295.7-Temp))*-1.561e-09 
                ELSE IF (Temp .ge. 295.7 .AND. Temp .lt. 295.8) THEN 
                    beta = 2.744e-08 + (1.0 - 10.0*(295.8-Temp))*-1.834e-09 
                ELSE IF (Temp .ge. 295.8 .AND. Temp .lt. 295.9) THEN 
                    beta = 2.561e-08 + (1.0 - 10.0*(295.9-Temp))*-1.711e-09 
                ELSE IF (Temp .ge. 295.9 .AND. Temp .lt. 296.0) THEN 
                    beta = 2.390e-08 + (1.0 - 10.0*(296.0-Temp))*-1.597e-09 
                ELSE IF (Temp .ge. 296.0 .AND. Temp .lt. 296.1) THEN 
                    beta = 2.230e-08 + (1.0 - 10.0*(296.1-Temp))*-1.490e-09 
                ELSE IF (Temp .ge. 296.1 .AND. Temp .lt. 296.2) THEN 
                    beta = 2.081e-08 + (1.0 - 10.0*(296.2-Temp))*-1.390e-09 
                ELSE IF (Temp .ge. 296.2 .AND. Temp .lt. 296.3) THEN 
                    beta = 1.942e-08 + (1.0 - 10.0*(296.3-Temp))*-1.298e-09 
                ELSE IF (Temp .ge. 296.3 .AND. Temp .lt. 296.4) THEN 
                    beta = 1.812e-08 + (1.0 - 10.0*(296.4-Temp))*-1.211e-09 
                ELSE IF (Temp .ge. 296.4 .AND. Temp .lt. 296.5) THEN 
                    beta = 1.691e-08 + (1.0 - 10.0*(296.5-Temp))*-1.347e-09 
                ELSE IF (Temp .ge. 296.5 .AND. Temp .lt. 296.6) THEN 
                    beta = 1.557e-08 + (1.0 - 10.0*(296.6-Temp))*-1.240e-09 
                ELSE IF (Temp .ge. 296.6 .AND. Temp .lt. 296.7) THEN 
                    beta = 1.433e-08 + (1.0 - 10.0*(296.7-Temp))*-1.141e-09 
                ELSE IF (Temp .ge. 296.7 .AND. Temp .lt. 296.8) THEN 
                    beta = 1.319e-08 + (1.0 - 10.0*(296.8-Temp))*-1.050e-09 
                ELSE IF (Temp .ge. 296.8 .AND. Temp .lt. 296.9) THEN 
                    beta = 1.214e-08 + (1.0 - 10.0*(296.9-Temp))*-9.664e-10 
                ELSE IF (Temp .ge. 296.9 .AND. Temp .lt. 297.0) THEN 
                    beta = 1.117e-08 + (1.0 - 10.0*(297.0-Temp))*-8.894e-10 
                ELSE IF (Temp .ge. 297.0 .AND. Temp .lt. 297.1) THEN 
                    beta = 1.028e-08 + (1.0 - 10.0*(297.1-Temp))*-9.485e-10 
                ELSE IF (Temp .ge. 297.1 .AND. Temp .lt. 297.2) THEN 
                    beta = 9.332e-09 + (1.0 - 10.0*(297.2-Temp))*-8.610e-10 
                ELSE IF (Temp .ge. 297.2 .AND. Temp .lt. 297.3) THEN 
                    beta = 8.471e-09 + (1.0 - 10.0*(297.3-Temp))*-7.816e-10 
                ELSE IF (Temp .ge. 297.3 .AND. Temp .lt. 297.4) THEN 
                    beta = 7.689e-09 + (1.0 - 10.0*(297.4-Temp))*-7.095e-10 
                ELSE IF (Temp .ge. 297.4 .AND. Temp .lt. 297.5) THEN 
                    beta = 6.980e-09 + (1.0 - 10.0*(297.5-Temp))*-7.310e-10 
                ELSE IF (Temp .ge. 297.5 .AND. Temp .lt. 297.6) THEN 
                    beta = 6.249e-09 + (1.0 - 10.0*(297.6-Temp))*-5.766e-10 
                ELSE IF (Temp .ge. 297.6 .AND. Temp .lt. 297.7) THEN 
                    beta = 5.672e-09 + (1.0 - 10.0*(297.7-Temp))*-5.941e-10 
                ELSE IF (Temp .ge. 297.7 .AND. Temp .lt. 297.8) THEN 
                    beta = 5.078e-09 + (1.0 - 10.0*(297.8-Temp))*-5.319e-10 
                ELSE IF (Temp .ge. 297.8 .AND. Temp .lt. 297.9) THEN 
                    beta = 4.546e-09 + (1.0 - 10.0*(297.9-Temp))*-5.321e-10 
                ELSE IF (Temp .gt. 298.0) THEN 
                    beta = 4.014e-09 
                ENDIF
