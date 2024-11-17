#include <stdio.h>
#define GRADES_COUNT 5
int main() {
    int numberOfStudents;
    printf("Enter the number of students: ");
    scanf("%d", &numberOfStudents);
    if(numberOfStudents < 1) {
        printf("No students to check\n");
        return -1;
    }
    char students[numberOfStudents][20];
    int grades[numberOfStudents][GRADES_COUNT];
    int sums[numberOfStudents];
    double averages[numberOfStudents]; 
    int sum = 0;
    double highestAverage = __DBL_MIN__; 
    int highestAverageIndex = -1; 
    double classAverage; 
    int studentsBelowAverage = 0; 
    int highestGrade = -100; 
    int lowestGrade = __INT_MAX__;

    for(int i=0; i<numberOfStudents; i++) {
        printf("Enter name for student %d: ", i+1);
        scanf("%s", students[i]);
        printf("Enter grades for %s (5 grades): ", students[i]);
        for(int j=0; j<GRADES_COUNT; j++) {
            scanf("%d", &grades[i][j]);
            
            if(grades[i][j] < lowestGrade) {
                lowestGrade = grades[i][j];
            }

            if(grades[i][j] > highestGrade) {
                highestGrade = grades[i][j];
            }
            sum += grades[i][j];            
        }
        sums[i] = sum;
        sum = 0;

        averages[i] = (double)sums[i] / GRADES_COUNT;
    }

    printf("\n --- Student Summary ---\n");
    for(int i=0; i<numberOfStudents; i++) {
        printf("%s: Grades: ", students[i]);
        for(int j=0; j<GRADES_COUNT; j++) {
            printf("%d ", grades[i][j]);
        }
        printf("| Total: %d | Average: %.2f", sums[i], averages[i]);
        printf("\n");
    } 
    
    printf("\n --- Class Statistics ---\n");
    
    for(int i=0; i<numberOfStudents; i++) {
        if(averages[i] > highestAverage) {
            highestAverage = averages[i];
            highestAverageIndex = i; 
        }
    }
    printf("Highest Average: %s (%.2f)\n", students[highestAverageIndex], highestAverage);
    
    double sumofAverages = 0;  
    for(int i=0; i<numberOfStudents; i++) {
        sumofAverages += averages[i];
    }

    classAverage = sumofAverages/numberOfStudents;
    printf("Class Average: %.2f\n", classAverage);

    for(int i=0; i<numberOfStudents; i++) {
        if(averages[i] < classAverage) {
            ++studentsBelowAverage;
        }
    }
    printf("Students Below Class Average: %d\n", studentsBelowAverage);    
    printf("Highest Grade: %d\n", highestGrade);
    printf("Lowest Grade: %d\n", lowestGrade);


    return 0;
}