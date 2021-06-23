# Air pollution forecasting with Numerical modeling and ML (20200902 ~ 20201008)
## Using convection-diffusion Equations and LSTM to make predictions.
- Scientific computing lab project for academic conference
- Silver award in natural science academic conference
- This repo maintained by 신영민, [오서영](https://github.com/OH-Seoyoung).
- I mainly did numerical modeling.

### 1. Process
#### (1) Data
- Using the fine dust concentration, wind speed wind direction data, and regional latitude data per hour by region.
![image](https://user-images.githubusercontent.com/68014282/123036041-5e8c5400-d427-11eb-99e2-669d832658b2.png)
- Wind data is interpolated using cubic interpolation.
![image](https://user-images.githubusercontent.com/68014282/123040080-22a8bd00-d42e-11eb-85db-5963589ed4c1.png)
- The fine dust concentration data were interpolated using IDW.
![image](https://user-images.githubusercontent.com/68014282/123040219-613e7780-d42e-11eb-84e9-aab0c7792787.png)

