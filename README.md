# Air pollution forecasting with Numerical modeling (20200902 ~ 20201008)
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

```
[1] 기상자료개방포털, https://data.kma.go.kr/cmmn/main.do  
[2] 에어코리아, https://www.airkorea.or.kr/index
```

#### (2) Numerical Modeling [[Codes]](https://github.com/young3984/Air_pollution_forecasting_with_Numerical_modeling_and_ML/tree/master/simulation)
- Assume that there are no chemical changes between substances in the air.
- The Convection-Diffusion equation was used.
    - Convection equation
    
    ![image](https://user-images.githubusercontent.com/68014282/123516674-4858ef00-d6d8-11eb-9766-aecb5fa67cc3.png)
    - Diffusion equation 
    
    ![image](https://user-images.githubusercontent.com/68014282/123516726-82c28c00-d6d8-11eb-891c-cd9b8a800782.png)
    - Convection-Diffusion equation
    
    ![image](https://user-images.githubusercontent.com/68014282/123516804-ed73c780-d6d8-11eb-9ce7-00ec91f690a7.png)
- Discretization of the convective diffusion equation.
    - The first-order median difference formula and the second-order median difference formula are used.
    
    ![image](https://user-images.githubusercontent.com/68014282/123516892-67a44c00-d6d9-11eb-839c-c5e1aefc02b3.png)
    ![image](https://user-images.githubusercontent.com/68014282/123516904-7854c200-d6d9-11eb-891e-5f4fa6f357ce.png)
    - result
    
    ![image](https://user-images.githubusercontent.com/68014282/123516975-c964b600-d6d9-11eb-9e1c-a890c2f6ba7d.png)
- For more detailed process, please refer to the [PPT](https://github.com/young3984/Air_pollution_forecasting_with_Numerical_modeling_and_ML/blob/master/PPT/%EC%88%98%EC%B9%98%20%EB%AA%A8%EB%8D%B8%EB%A7%81%20%EB%B0%8F%20%EB%A8%B8%EC%8B%A0%EB%9F%AC%EB%8B%9D%EC%9D%84%20%EC%9D%B4%EC%9A%A9%ED%95%9C%20%EB%8C%80%EA%B8%B0%20%EC%98%A4%EC%97%BC%20%EC%98%88%EC%B8%A1%20-%20%EC%98%A4%EC%84%9C%EC%98%81%2C%20%EC%8B%A0%EC%98%81%EB%AF%BC.pdf)

### 2. Result
#### (1) Numerical Modeling
> Contour

![contour](https://user-images.githubusercontent.com/68014282/123517341-63792e00-d6db-11eb-8e8e-38ed9f5e460b.gif)

> Mesh

![mesh](https://user-images.githubusercontent.com/68014282/123517370-7db30c00-d6db-11eb-82a7-940c04df2b77.gif)

- Please refer to the [PPT](https://github.com/young3984/Air_pollution_forecasting_with_Numerical_modeling_and_ML/blob/master/PPT/%EC%88%98%EC%B9%98%20%EB%AA%A8%EB%8D%B8%EB%A7%81%20%EB%B0%8F%20%EB%A8%B8%EC%8B%A0%EB%9F%AC%EB%8B%9D%EC%9D%84%20%EC%9D%B4%EC%9A%A9%ED%95%9C%20%EB%8C%80%EA%B8%B0%20%EC%98%A4%EC%97%BC%20%EC%98%88%EC%B8%A1%20-%20%EC%98%A4%EC%84%9C%EC%98%81%2C%20%EC%8B%A0%EC%98%81%EB%AF%BC.pdf) for more detailed results.
### 3. Reference
```
[1] 김영록, 김준석, 유창우, 이승규, 정다래, 최용호, 허영진, [IndustrialMathematics_Main], 경문사, 2017
```



