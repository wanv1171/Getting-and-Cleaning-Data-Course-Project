# Code book for Getting and Cleaning Data Course Project
---
## Sample Output File
Output sample is available in this repo under the name of tidyUCIData.csv
## Variables
Each row contains 88 variables, most of the variables falls into categories of:
* **Identifiers**
	* `Activity`
	* `Subject`
* **Time Domain Variables**
	* `Avg.Time.Domain.Body.Acceleration.Mean.X`
	* `Avg.Time.Domain.Body.Acceleration.Mean.Y`
	* `Avg.Time.Domain.Body.Acceleration.Mean.Z`
	* `Avg.Time.Domain.Body.Acceleration.Standard.Deviation.X`
	* `Avg.Time.Domain.Body.Acceleration.Standard.Deviation.Y`
	* `Avg.Time.Domain.Body.Acceleration.Standard.Deviation.Z`
	* `Avg.Time.Domain.Gravity.Acceleration.Mean.X`
	* `Avg.Time.Domain.Gravity.Acceleration.Mean.Y`
	* `Avg.Time.Domain.Gravity.Acceleration.Mean.Z`
	* `Avg.Time.Domain.Gravity.Acceleration.Standard.Deviation.X`
	* `Avg.Time.Domain.Gravity.Acceleration.Standard.Deviation.Y`
	* `Avg.Time.Domain.Gravity.Acceleration.Standard.Deviation.Z`
	* `Avg.Time.Domain.Body.Acceleration.Jerk.Mean.X`
	* `Avg.Time.Domain.Body.Acceleration.Jerk.Mean.Y`
	* `Avg.Time.Domain.Body.Acceleration.Jerk.Mean.Z`
	* `Avg.Time.Domain.Body.Acceleration.Jerk.Standard.Deviation.X`
	* `Avg.Time.Domain.Body.Acceleration.Jerk.Standard.Deviation.Y`
	* `Avg.Time.Domain.Body.Acceleration.Jerk.Standard.Deviation.Z`
	* `Avg.Time.Domain.Body.Gyrometer.Mean.X`
	* `Avg.Time.Domain.Body.Gyrometer.Mean.Y`
	* `Avg.Time.Domain.Body.Gyrometer.Mean.Z`
	* `Avg.Time.Domain.Body.Gyrometer.Standard.Deviation.X`
	* `Avg.Time.Domain.Body.Gyrometer.Standard.Deviation.Y`
	* `Avg.Time.Domain.Body.Gyrometer.Standard.Deviation.Z`
	* `Avg.Time.Domain.Body.Gyrometer.Jerk.Mean.X`
	* `Avg.Time.Domain.Body.Gyrometer.Jerk.Mean.Y`
	* `Avg.Time.Domain.Body.Gyrometer.Jerk.Mean.Z`
	* `Avg.Time.Domain.Body.Gyrometer.Jerk.Standard.Deviation.X`
	* `Avg.Time.Domain.Body.Gyrometer.Jerk.Standard.Deviation.Y`
	* `Avg.Time.Domain.Body.Gyrometer.Jerk.Standard.Deviation.Z`
	* `Avg.Time.Domain.Body.Acceleration.Magnitude.Mean`
	* `Avg.Time.Domain.Body.Acceleration.Magnitude.Standard.Deviation`
	* `Avg.Time.Domain.Gravity.Acceleration.Magnitude.Mean`
	* `Avg.Time.Domain.Gravity.Acceleration.Magnitude.Standard.Deviation`
	* `Avg.Time.Domain.Body.Acceleration.Jerk.Magnitude.Mean`
	* `Avg.Time.Domain.Body.Acceleration.Jerk.Magnitude.Standard.Deviation`
	* `Avg.Time.Domain.Body.Gyrometer.Magnitude.Mean`
	* `Avg.Time.Domain.Body.Gyrometer.Magnitude.Standard.Deviation`
	* `Avg.Time.Domain.Body.Gyrometer.Jerk.Magnitude.Mean`
	* `Avg.Time.Domain.Body.Gyrometer.Jerk.Magnitude.Standard.Deviation`
* **Frequency Domain Variables**
	* `Avg.Frequency.Domain.Body.Acceleration.Mean.X`
	* `Avg.Frequency.Domain.Body.Acceleration.Mean.Y`
	* `Avg.Frequency.Domain.Body.Acceleration.Mean.Z`
	* `Avg.Frequency.Domain.Body.Acceleration.Standard.Deviation.X`
	* `Avg.Frequency.Domain.Body.Acceleration.Standard.Deviation.Y`
	* `Avg.Frequency.Domain.Body.Acceleration.Standard.Deviation.Z`
	* `Avg.Frequency.Domain.Body.Acceleration.Mean.Frequency.X`
	* `Avg.Frequency.Domain.Body.Acceleration.Mean.Frequency.Y`
	* `Avg.Frequency.Domain.Body.Acceleration.Mean.Frequency.Z`
	* `Avg.Frequency.Domain.Body.Acceleration.Jerk.Mean.X`
	* `Avg.Frequency.Domain.Body.Acceleration.Jerk.Mean.Y`
	* `Avg.Frequency.Domain.Body.Acceleration.Jerk.Mean.Z`
	* `Avg.Frequency.Domain.Body.Acceleration.Jerk.Standard.Deviation.X`
	* `Avg.Frequency.Domain.Body.Acceleration.Jerk.Standard.Deviation.Y`
	* `Avg.Frequency.Domain.Body.Acceleration.Jerk.Standard.Deviation.Z`
	* `Avg.Frequency.Domain.Body.Acceleration.Jerk.Mean.Frequency.X`
	* `Avg.Frequency.Domain.Body.Acceleration.Jerk.Mean.Frequency.Y`
	* `Avg.Frequency.Domain.Body.Acceleration.Jerk.Mean.Frequency.Z`
	* `Avg.Frequency.Domain.Body.Gyrometer.Mean.X`
	* `Avg.Frequency.Domain.Body.Gyrometer.Mean.Y`
	* `Avg.Frequency.Domain.Body.Gyrometer.Mean.Z`
	* `Avg.Frequency.Domain.Body.Gyrometer.Standard.Deviation.X`
	* `Avg.Frequency.Domain.Body.Gyrometer.Standard.Deviation.Y`
	* `Avg.Frequency.Domain.Body.Gyrometer.Standard.Deviation.Z`
	* `Avg.Frequency.Domain.Body.Gyrometer.Mean.Frequency.X`
	* `Avg.Frequency.Domain.Body.Gyrometer.Mean.Frequency.Y`
	* `Avg.Frequency.Domain.Body.Gyrometer.Mean.Frequency.Z`
	* `Avg.Frequency.Domain.Body.Acceleration.Magnitude.Mean`
	* `Avg.Frequency.Domain.Body.Acceleration.Magnitude.Standard.Deviation`
	* `Avg.Frequency.Domain.Body.Acceleration.Magnitude.Mean.Frequency`
	* `Avg.Frequency.Domain.Body.Acceleration.Jerk.Magnitude.Mean`
	* `Avg.Frequency.Domain.Body.Acceleration.Jerk.Magnitude.Standard.Deviation`
	* `Avg.Frequency.Domain.Body.Acceleration.Jerk.Magnitude.Mean.Frequency`
	* `Avg.Frequency.Domain.Body.Gyrometer.Magnitude.Mean`
	* `Avg.Frequency.Domain.Body.Gyrometer.Magnitude.Standard.Deviation`
	* `Avg.Frequency.Domain.Body.Gyrometer.Magnitude.Mean.Frequency`
	* `Avg.Frequency.Domain.Body.Gyrometer.Jerk.Magnitude.Mean`
	* `Avg.Frequency.Domain.Body.Gyrometer.Jerk.Magnitude.Standard.Deviation`
	* `Avg.Frequency.Domain.Body.Gyrometer.Jerk.Magnitude.Mean.Frequency`
* **Angle Variables**
	* `Avg.angle(Time.Domain.Body.Acceleration.Mean,Gravity)`
	* `Avg.angle(Time.Domain.Body.Acceleration.Jerk.Mean),Gravity.Mean)`
	* `Avg.angle(Time.Domain.Body.Gyrometer.Mean,Gravity.Mean)`
	* `Avg.angle(Time.Domain.Body.Gyrometer.Jerk.Mean,Gravity.Mean)`
	* `Avg.angle(X,Gravity.Mean)`
	* `Avg.angle(Y,Gravity.Mean)`
	* `Avg.angle(Z,Gravity.Mean)`

All the measurement data are averaged based on subject and activity, hence the Avg prefix.

## Transformations
---
The following data transformation activity has been performed:
1. Training and testing data has been merged
2. Variable names has been changed for ease-of-reading
3. All measurement data are averaged based on subject and activity
4. Activity label has been converrted from integer value to character string representing the activity

**Detailed steps of data manipulation activities are listed in README.md**