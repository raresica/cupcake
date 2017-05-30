package Model;

import java.util.HashMap;
import java.util.Map;

/**
 * The purpose of ModelFacade is to...
 * @author kasper
 */
public class ModelFacade {

    public static String[] getToppings(){
        String[] toppings = {"Chocolate", "Blueberry","Rasberry","Crispy","Strawberry","Rum/Raisin","Orange","Lemon","Blue cheese"};
        return toppings;
    }
    
    public static String[] getBottoms(){
        String[] bottoms = {"Chocolate","Vanilla","Nutmeg","Pistacio","Almond"};
        return bottoms;
    }

    public static Map<String, Float> getPricesForBottoms(){
        Map<String, Float> prices = new HashMap<>();
        prices.put("Chocolate", 5.00f);
        prices.put("Vanilla", 5.00f);
        prices.put("Nutmeg", 5.00f);
        prices.put("Pistacio", 6.00f);
        prices.put("Almond", 7.00f);
        return prices;
    }

    public static Map<String, Float> getPricesForToppings(){
        Map<String, Float> prices = new HashMap<>();
        prices.put("Chocolate", 5.00f);
        prices.put("Blueberry", 5.00f);
        prices.put("Rasberry", 5.00f);
        prices.put("Crispy", 6.00f);
        prices.put("Strawberry", 6.00f);
        prices.put("Rum/Raisin", 7.00f);
        prices.put("Lemon", 8.00f);
        prices.put("Blue cheese", 9.00f);
        return prices;
    }
}
