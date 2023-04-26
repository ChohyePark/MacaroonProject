package kr.co.khacademy.semi.service;

import kr.co.khacademy.semi.dto.LoginRequest;
import kr.co.khacademy.semi.entity.Account;
import kr.co.khacademy.semi.entity.Password;
import kr.co.khacademy.semi.exception.PasswordMissMatchException;
import kr.co.khacademy.semi.repository.AccountRepository;
import kr.co.khacademy.semi.repository.PasswordRepository;
import kr.co.khacademy.semi.common.encryption.BasicPasswordEncryptor;
import kr.co.khacademy.semi.common.encryption.PasswordEncryptionProvider;

public class AccountServiceImpl implements AccountService {

    private static final AccountServiceImpl instance = new AccountServiceImpl();

    private static final PasswordEncryptionProvider basicPasswordEncryptor = BasicPasswordEncryptor.getInstance();

    private static final AccountRepository accountRepository = AccountRepository.getInstance();
    private static final PasswordRepository passwordRepository = PasswordRepository.getInstance();
//    private static final RoleRepository roleRepository = RoleRepository.getInstance();
//    private static final GrantRepository grantRepository = GrantRepository.getInstance();
//    private static final PermissionRepository permissionRepository = PermissionRepository.getInstance();

    private AccountServiceImpl() {
    }

    public static AccountServiceImpl getInstance() {
        return instance;
    }

    @Override
    public Long login(LoginRequest loginRequest) {
        Account account = accountRepository.findByUsername(loginRequest.getUsername());
        Password password = passwordRepository.findByAccountId(account.getId());

        if (basicPasswordEncryptor.checkPassword(
            loginRequest.getPlainPassword(),
            password.getEncryptedPassword())
        ) {
            return account.getId();
        }
        throw new PasswordMissMatchException();

//        Role role = roleRepository.findByRoleId(account.getRoleId());
//        Set<Grant> grants = grantRepository.findAllByRoleId(role.getId());
//        Set<Permission> permissions = grants.stream()
//            .map(grant -> permissionRepository.findByPermissionId(grant.getPermissionId()))
//            .collect(Collectors.toUnmodifiableSet());
    }
}