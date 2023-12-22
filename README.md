# Data Cleaning, Analysis, and Visualization in R

## FIFA 19 Dataset

### Objective
This project focuses on comprehensive data cleaning of the FIFA 19 dataset using the R programming language, aiming to transform raw data into a cleaner, more manageable format.

### Dataset Overview
The FIFA 19 dataset provides detailed information about football players, including personal details, playing attributes, and performance statistics.

### Data Cleaning Steps

1. **Data Import and Inspection:**
   - Load the FIFA 19 dataset into R.
   - Examine the structure, check for missing values, and understand variable types.

2. **Column Deletion:**
   - Identify and remove irrelevant or redundant columns.
   - Delete columns with a significant number of missing values.

3. **Column Concatenation:**
   - Combine relevant columns to create new variables for enhanced usability (e.g., 'Full Name').

4. **Unit Conversion:**
   - Convert height from centimeters to feet.
   - Convert weight from kilograms to pounds for consistency.

5. **Data Validation:**
   - Check for outliers in numerical columns.
   - Validate converted units for accuracy.

### Cleaning Outputs

- **Streamlined Dataset:**
  - Remove irrelevant columns, reducing redundancy.
  - Eliminate columns with excessive missing values.

- **Enhanced Variables:**
  - Create new variables through concatenation for more informative data.

- **Unit-Adjusted Metrics:**
  - Present height in feet for better intuition.
  - Standardize weight in pounds for consistency.

### Tools Used
1. R programming language
2. R libraries: dplyr, tidyr, etc.

### Conclusion
This data cleaning project on the FIFA 19 dataset aims to provide a solid foundation for exploring player attributes, ensuring data accuracy, and facilitating subsequent analyses.

---

## IMDb Top 1000 Movies Analysis

### Objective
This project conducts a comprehensive analysis of the IMDb Top 1000 Movies dataset using R, aiming to uncover patterns, trends, and insights within the world of top-rated films.

### Dataset Overview
The IMDb Top 1000 Movies dataset includes key information about movie titles, release years, genres, durations, and IMDb ratings.

### Analysis Steps

1. **Data Import and Exploration:**
   - Load the IMDb Top 1000 Movies dataset into R.
   - Explore the structure, check for missing values, and understand variable types.

2. **Descriptive Statistics:**
   - Compute summary statistics for key variables.
   - Visualize the distribution of IMDb ratings.

3. **Temporal Trends:**
   - Analyze how IMDb ratings have changed over the years.
   - Identify trends in movie duration and genre popularity.

4. **Genre Analysis:**
   - Explore the distribution of genres in the top-rated movies.
   - Identify common genres and their IMDb ratings.

5. **Top Directors and Actors:**
   - Identify directors and actors with the most movies in the IMDb Top 1000.
   - Explore the relationship between involvement and movie ratings.

### Tools Used
R programming language
R libraries: tidyverse, dplyr, etc.

### Conclusion
This data analysis project on the IMDb Top 1000 Movies dataset aims to provide valuable insights into the world of top-rated films, exploring trends, and relationships within the dataset.

---

## Data Visualization with ggplot2 on mtcars Dataset

### Objective
This project visually explores relationships and patterns within the mtcars dataset using the R programming language, specifically leveraging the ggplot2 package.

### Dataset Overview
The mtcars dataset contains information on various automobile models, including attributes such as mpg, gears, weight, and horsepower.

### Visualization Steps

1. **Bar Chart for Average MPG by Gear:**
   - Create a bar chart to visualize average MPG for each number of gears.
   - Utilize color or other aesthetics for enhanced representation.

2. **Scatterplot for MPG against Weight:**
   - Generate a scatterplot to explore the relationship between MPG and car weight.
   - Implement color or size coding for additional information.

3. **Scatter Plot with Smoothed Line for MPG and Horsepower:**
   - Develop a scatter plot with a smoothed line to investigate the relationship between MPG and horsepower.
   - Include confidence intervals for trend assessment.

### Visualization Outputs

- **Average MPG by Gear:**
  - Clear visualization depicting average MPG for different gear configurations.

- **MPG against Weight:**
  - Scatterplot illustrating how MPG varies with car weight.

- **Scatter Plot with Smoothed Line (MPG and Horsepower):**
  - Visual representation of the relationship between MPG and horsepower.

### Tools Used
R programming language
ggplot2 package for data visualization

### Conclusion
This data visualization project on the mtcars dataset aims to provide insights into the relationships between variables like MPG, gears, weight, and horsepower using informative visualizations. The visualizations serve as a foundation for further analysis.