package ru.javawebinar.topjava.util;

import ru.javawebinar.topjava.model.MealTo;

import java.time.LocalDateTime;
import java.time.Month;
import java.util.Arrays;
import java.util.List;

public class MealsToUtil {

    public static List<MealTo> MAIL_TO_LIST = Arrays.asList(
            new MealTo(LocalDateTime.of(2020, Month.FEBRUARY, 1, 10, 0), "Завтрак", 500, false),
            new MealTo(LocalDateTime.of(2020, Month.FEBRUARY, 2, 14, 25), "Ведро оливье", 2500, true),
            new MealTo(LocalDateTime.of(2020, Month.FEBRUARY, 3, 19, 0), "Ужин", 1500, false)
    );

}
