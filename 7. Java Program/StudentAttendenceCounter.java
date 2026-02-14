// #Takes the total no. of class conducted
// #Takes no. of class attended
// #Calculates the attendance percentage using loop
// #Display whether the student is eligible (>=75% attendance) or not eligible
// # use easies way to solve it.


class StudentAttendenceCounter {
    public static void main(String[] args) {
        int TotalClass = 100;
        int attendedClass = 90;

        // FIX: Cast one variable to (float) to force decimal division
        float attendancePercentage = ((float) attendedClass / TotalClass * 100);

        if (attendancePercentage >= 75) {
            System.out.println("Student is eligible for the exam");
        } else {
            System.out.println("Student is not eligible for the exam");
        }
    }
}