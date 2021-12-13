package mate.controller;

import java.io.IOException;
import java.util.List;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.DriverService;
import mate.service.ManufacturerService;

@WebServlet("/inject")
public class InjectDataController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final Random random = new Random();
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService = (DriverService)
            injector.getInstance(DriverService.class);
    private final ManufacturerService manufacturerService = (ManufacturerService)
            injector.getInstance(ManufacturerService.class);
    private List<Driver> drivers;
    private List<Car> cars;

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        drivers = List.of(
                new Driver("Aleksandr Moskovchuk", "BAH000-111", "1111", "1111"),
                new Driver("Anatolii Huryk", "BAH000-222", "1112", "1111"),
                new Driver("Andrew Dzundza", "BAH000-333", "1113", "1111"),
                new Driver("Andrey Sidorkin", "BAH000-444", "1114", "1111"),
                new Driver("Anton Volskyi", "BAH000-555", "1115", "1111"),
                new Driver("Artem Slobodianiuk", "BAH000-666", "1116", "1111"),
                new Driver("Dany Nesterov", "BAH000-777", "1117", "1111"),
                new Driver("Dima Barshay", "BAH000-888", "1118", "1111"),
                new Driver("Dzmitry Kozel", "BAH000-999", "1119", "1111"),
                new Driver("Dmytro Tyvoniuk", "BAH000-001", "1120", "1111"),
                new Driver("Eugene Kozlov", "BAH000-002", "1121", "1111"),
                new Driver("Illia Lavryniuk", "BAH000-003", "1122", "1111"),
                new Driver("Kate Deshchynska", "BAH000-004", "1123", "1111"),
                new Driver("Kateryna Nishchenko", "BAH000-005", "1124", "1111"),
                new Driver("Konstantin Nikiforov", "BAH000-006", "1125", "1111"),
                new Driver("Misha Samokhin", "BAH000-007", "1126", "1111"),
                new Driver("Mykhailo Tereshchenkov", "BAH000-008", "1127", "1111"),
                new Driver("Mykola Voronov", "BAH000-009", "1128", "1111"),
                new Driver("Natalia Vidzivashets", "BAH000-010", "1129", "1111"),
                new Driver("Roman Polulikh", "BAH000-011", "1130", "1111"),
                new Driver("Pavlo Martsiniv", "BAH000-999", "1131", "1111"));
        drivers.forEach(driverService::create);

        List<Manufacturer> manufacturers = List.of(
                new Manufacturer("ZAZ", "Ukraine"),
                new Manufacturer("Volkswagen", "Deutschland"),
                new Manufacturer("Opel", "Germany"),
                new Manufacturer("Ford", "USA"),
                new Manufacturer("Bugatti", "France"),
                new Manufacturer("KIA", "China"));
        manufacturers.forEach(manufacturerService::create);

        cars = List.of(
                new Car("Zaporozhets", manufacturers.get(0)),
                new Car("Touran", manufacturers.get(1)),
                new Car("Astra", manufacturers.get(2)),
                new Car("Focus", manufacturers.get(3)),
                new Car("Chiron", manufacturers.get(4)),
                new Car("Sorento", manufacturers.get(5)));
        cars.forEach(carService::create);

        drivers.forEach(driver -> carService
                .addDriverToCar(driver, cars.get(random.nextInt(cars.size()))));
        req.setAttribute("drivers", drivers);
        req.setAttribute("cars", cars);
        resp.sendRedirect("/");
    }

}
