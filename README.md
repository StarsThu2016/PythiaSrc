# Pythia: Improving Datacenter Utilization via Precise Contention Prediction for Multiple Co-located Workloads
[[Paper]](https://starsthu2016.github.io/uploads/middleware18-xu-ran.pdf) [[Presentation Video]](https://youtu.be/NtWtPze_AaQ) [[Presentation Slides]](https://starsthu2016.github.io/uploads/PythiaSlides.pdf)  
Authors: [Ran Xu](https://starsthu2016.github.io/), [Subrata Mitra](https://research.adobe.com/person/subrata-mitra/), [Jason Rahman](https://www.linkedin.com/in/jasonrahman), [Peter Bai](https://www.linkedin.com/in/peter-bai-951288127), [Bowen Zhou](https://www.linkedin.com/in/zhoubowen), [Greg Bronevetsky](https://www.linkedin.com/in/gregbronevetsky), [Saurabh Bagchi](https://engineering.purdue.edu/~sbagchi/)

With the increase in the number cores in modern architectures, the need for co-locating multiple workloads has become crucial for improving the overall compute utilization. However, co-locating multiple workloads on the same server is often avoided to protect the performance of the latency sensitive (LS) workloads from the contentions created by other co-located workloads on the shared resources, such as cache and memory bandwidth.  
In this paper, we present Pythia, a co-location manager that can precisely predict the combined contention on shared resources when multiple co-located workloads interfere with an LS workload. Pythia uses a simple linear regression model that can be trained using a small fraction of the large configuration space of all possible co-locations and can still make highly accurate predictions for the combined contentions. Based on those predictions, Pythia judiciously schedules incoming workloads so that cluster utilization is improved without violating the latency threshold of the LS workloads. We demonstrate that Pythia’s scheduling can improve cluster utilization by 71% compared to a simple extension of a prior work when the user is ready to sacrifice up to 5% in the QoS metric and achieve cluster utilization of 99% if 10% degradation in QoS is acceptable.

# Contact
If you have any questions or suggestions, feel free to email Ran Xu (xu943@purdue.edu).

# Cite
If you find our work useful and relevant to your paper, please consider to cite,
```
@inproceedings{xu2018pythia,
  title={Pythia: Improving datacenter utilization via precise contention prediction for multiple co-located workloads},
  author={Xu, Ran and Mitra, Subrata and Rahman, Jason and Bai, Peter and Zhou, Bowen and Bronevetsky, Greg and Bagchi, Saurabh},
  booktitle={Proceedings of the 19th International Middleware Conference},
  pages={146--160},
  year={2018}
}
```

# Files description
| Path        | Description |
| ----------- | ----------- |
| bin/				|  Binaries   | 
| processing/	|  Pythia scripts  | 
| scripts/		|  Pythia scripts  | 
| src/				|  Source code from other group  
| single_app_contention_mongodb_1core/  | Main source code folders, check README in each sub-directory | 
| single_app_contention_mongodb_2core/  | | 
| single_app_contention_nginx_2core/  | | 
| single_app_contention_redis_1core/  | | 
| single_app_contention_redis_2core/  | | 
| single_app_contention_reporter_1core/  | | 
| double_app_contention_redis_1core/  | | 
| triple_app_contention_redis_1core/  | | 
