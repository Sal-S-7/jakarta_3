package com.example.exercice_jakarta3.entity;

public class Cat {
    private String name;
    private String breed;
    private String favoriteMeal;
    private String birthDate;

    public Cat(String name, String breed, String favoriteMeal, String birthDate) {
        this.name = name;
        this.breed = breed;
        this.favoriteMeal = favoriteMeal;
        this.birthDate = birthDate;
    }

    public String getName() { return name; }
    public String getBreed() { return breed; }
    public String getFavoriteMeal() { return favoriteMeal; }
    public String getBirthDate() { return birthDate; }
}
