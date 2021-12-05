/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package personpackage;

/**
 *
 * @author Phong_learning
 */
     public class Person {

                public String Name;
                public int Age;
                public String Hobby;

                public Person(String name, int age, String hobby) {
                    this.Name = name;
                    this.Age = age;
                    this.Hobby = hobby;
                }

    public String getName() {
        return Name;
    }

    public int getAge() {
        return Age;
    }

    public String getHobby() {
        return Hobby;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public void setAge(int Age) {
        this.Age = Age;
    }

    public void setHobby(String Hobby) {
        this.Hobby = Hobby;
    }          
     }
