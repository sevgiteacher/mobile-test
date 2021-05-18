package com.qacourse.utilities;

import com.github.javafaker.Faker;
import com.opencsv.CSVWriter;
import org.apache.commons.lang.RandomStringUtils;

import java.io.*;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.*;

public class DataGenerator {

    public static void main(String[] args) {

    }

    static Faker faker = new Faker();
    static Random random = new Random();

    public static String getRandomName() {
        return faker.name().firstName();
    }

    public static String getRandomSurname() {
        return faker.name().lastName();
    }

    public static String getRandomUsername() {
        return faker.name().username();
    }

    public static String getPreferedName() {
        return faker.name().name();
    }


    public static String getNationality() {
        return faker.nation().nationality();
    }

    public static String getRandomDateOfBirth() {
//        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
        return dateFormat.format(faker.date().birthday(19,99));
    }

    public static String getDate(int year, int month, int day, String format) {
        return LocalDate.now().plusYears(year).plusMonths(month).plusDays(day).format(DateTimeFormatter.ofPattern(format));
    }

    public static Map<String, Object> createUser() {
        String name = faker.name().firstName();
        String lastName = faker.name().lastName();
        String gender = faker.demographic().sex();
        String email = faker.name().username() + "@gmail.com";
        long phone = Long.parseLong(faker.numerify("#####"));

        Map<String, Object> newUser = new HashMap<>();
        newUser.put("name", name);
        newUser.put("gender", gender);
        newUser.put("email", email);
        newUser.put("status", "Active");

        return newUser;
    }

    public static String generateFakeAccountName() {
        String firstName = faker.name().firstName();
        String lastName = faker.name().lastName();
        String fullName = firstName + " " + lastName;
        return fullName;
    }

    public static String generateCompanyName() {
        String companyName = faker.company().name();
        return companyName;
    }

    public static int generateRandomAmount() {
        int randomNumber = random.nextInt(900) + 100;
        //String randomAccountNumber = String.valueOf(randomNumber);
        //out.println("randomNumber = " + randomNumber);
        return randomNumber;
    }

    public static String generateRandomAccountNumber() {
        int digit = 8;
        int m = (int) Math.pow(10, digit - 1);
        int randomAccNumber = m + new Random().nextInt(9 * m);
        String randomAccountNumber = String.valueOf(randomAccNumber);
        //out.println("randomAccountNumber = " + randomAccountNumber);
        return randomAccountNumber;

    }

    public static String generateRandomSortNumber() {
        int digit = 6;
        int m = (int) Math.pow(10, digit - 1);
        int randomAccNumber = m + new Random().nextInt(9 * m);
        String randomAccountNumber = String.valueOf(randomAccNumber);
        //out.println("randomSortNumber = " + randomAccountNumber);
        return randomAccountNumber;
    }

    public static String getFakePassword() {
//        Integer password = random.nextInt(9999);
//        return "P@ss" + password;
        //OR
//        int num = random.nextInt(9999);
//        char c = (char) (random.nextInt(26) + 'a');
//        return "P@s" + num + c;
        //OR
        return RandomStringUtils.randomAlphabetic(2).toUpperCase() + "@" +
                RandomStringUtils.randomNumeric(1) +
                RandomStringUtils.randomAlphabetic(2).toLowerCase() +
                RandomStringUtils.randomNumeric(2);
    }

    public static String getFakeEmailAddress() {
        return faker.name().firstName().toLowerCase() + "." + faker.name().lastName().toLowerCase() + "@yopmail.com";
    }

    public static String extractTokenFromVerificationLink(String verificationLink) {
        String verificationToken = verificationLink.substring(verificationLink.lastIndexOf("eyJhbGciOiJIUzUxMiJ9"), verificationLink.indexOf("\"}"));
        return verificationToken;
    }

    public static String getFakePhoneNumber() {
        long phoneNumber = faker.number().randomNumber(8, true);
// OR     int phoneNumber = random.nextInt(99999999);
        return "00" + phoneNumber;
    }

    public static void generateCSVwithoutKey(String phone) {

        try (PrintWriter writer = new PrintWriter(("./src/test/java/com/finspire/data/phoneNumber.csv"))) {

            StringBuilder sb = new StringBuilder();
            sb.append(phone);
            writer.write(sb.toString());

        } catch (FileNotFoundException e) {
            System.out.println(e.getMessage());

        }

    }

    public static void generateCSVphone(String filePath, String phone) {
        // first create file object for file placed at location
        // specified by filepath
        File file = new File(filePath);

        try {
            // create FileWriter object with file as parameter
            FileWriter outputfile = new FileWriter(file);

            // create CSVWriter with '|' as separator
            CSVWriter writer = new CSVWriter(outputfile, ',',
                    CSVWriter.NO_QUOTE_CHARACTER,
                    CSVWriter.DEFAULT_ESCAPE_CHARACTER,
                    CSVWriter.DEFAULT_LINE_END);

            // create a List which contains String array
            List<String[]> data = new ArrayList<String[]>();
            data.add(new String[] {"Phone"});
            data.add(new String[] {"44" + phone});
            writer.writeAll(data);

            // closing writer connection
            writer.close();
        }
        catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    //  ! When we retrieve date of birth from dataBase , it's converting SQL date format to String and without timestamp.!
    public static String getStringDate(Timestamp ts){

        String formattedDate = new SimpleDateFormat("yyyy-MM-dd").format(ts);

        return formattedDate;

    }

}


