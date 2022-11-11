package taxi.model;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@NoArgsConstructor
@RequiredArgsConstructor
public class Driver {
    private Long id;
    @NonNull
    private String name;
    @NonNull
    private String licenseNumber;
}
