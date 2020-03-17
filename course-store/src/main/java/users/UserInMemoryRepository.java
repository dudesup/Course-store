package users;

import util.PasswordUtil;

import java.util.*;

public class UserInMemoryRepository implements IUserRepository {
    private static Map<String, User> userMap = new HashMap<>();

    static {
        User admin = new User("admin", "admin", "admin@gmail.com", PasswordUtil.hashPassword("1234"));
        admin.setAdmin(true);
        userMap.put(admin.getLogin(), admin);
    }

    @Override
    public void addUser(User user) {
        userMap.put(user.getLogin(), user);
    }

    @Override
    public List<User> findAllUsers() {
        return new ArrayList<>(userMap.values());
    }

    @Override
    public Optional<User> getByLogin(String login) {
        User user = userMap.get(login);
        return Optional.ofNullable(user);
    }

    @Override
    public Optional<User> getByEmail(String email) {
        return userMap.values()
                .stream()
                .filter(user -> user.getEmail().equals(email))
                .findFirst();
    }

}
