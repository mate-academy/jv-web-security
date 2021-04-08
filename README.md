# Web security
- Add two more fields (`login` and `password`) to your `Driver` class.
  We will simplify the task, and our Driver will behave as User.
- Modify the required JSP pages and corresponding controllers to support two new fields: `login` and `password`
- Create new AuthenticationService with method ```Driver login(String login, String password);```
- Create new method ```Optional<Driver> findByLogin(String login)``` in DriverDao and DriverService.
- Use your new method _findByLogin_ in the ```authService.login(login, password)``` method to identify the user based on the login
- Implement `LoginController` with corresponding JSP page
- Implement user authentication based on HttpSession and filters. Only `LoginController` and `CreateDriverController` should be available for non authenticated users.
- Having information about currently logged-in user (e.g. driver), please implement the following controller `GetMyCurrentCarsController`.
  This controller is responsible for displaying the list of cars for currently logged driver (get info about the driver from the HttpSession).
  Hint: Use existed JSP page for displaying all cars.

__You can check yourself using this__ [checklist](https://mate-academy.github.io/jv-program-fulltime/03_web/checklist/03_filters_checklist.html)
