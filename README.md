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

```
[1] 기상자료개방포털, https://data.kma.go.kr/cmmn/main.do  
[2] 에어코리아, https://www.airkorea.or.kr/index
```

#### (2) Numerical Modeling
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
#### (3) Machine Learning
- LSTM is used(Long Short Term Memory)
- One kind of RNN that can be taught long-term dependence

![image](https://user-images.githubusercontent.com/68014282/123517186-8c4cf380-d6da-11eb-8636-cac99d23e317.png)

### 2. Result
#### (1) Numerical Modeling
> Contour

![contour](https://user-images.githubusercontent.com/68014282/123517341-63792e00-d6db-11eb-8e8e-38ed9f5e460b.gif)

> Mesh

![mesh](https://user-images.githubusercontent.com/68014282/123517370-7db30c00-d6db-11eb-82a7-940c04df2b77.gif)

#### (2) LSTM
> Contour

![image](https://user-images.githubusercontent.com/68014282/123517724-9a504380-d6dd-11eb-8c0d-4b4284c54219.png)


> Mesh

![image](https://user-images.githubusercontent.com/68014282/123517709-81479280-d6dd-11eb-8d32-2548485c240e.png)

### 3. Reference
```
[1] 김영록, 김준석, 유창우, 이승규, 정다래, 최용호, 허영진, [IndustrialMathematics_Main], 경문사, 2017
```



