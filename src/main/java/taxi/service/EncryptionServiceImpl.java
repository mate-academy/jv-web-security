package taxi.service;

import taxi.lib.Service;

@Service
public class EncryptionServiceImpl implements EncryptionService {
    @Override
    public String encrypt(String value) {
        return String.valueOf(value.hashCode());
    }
}
