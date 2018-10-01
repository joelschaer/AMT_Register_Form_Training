package business;

import model.User;

import java.util.LinkedList;
import java.util.List;

public class UserStore {
    public static List<User> userList = new LinkedList<User>();

    public void addUser(User user){
        userList.add(user);
    }

    public List<User> getAllUsers(){
        return new LinkedList<User>();
    }
}
