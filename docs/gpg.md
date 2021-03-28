# GPG

## Keys creation
```
# Main key (Certify only)
gpg --quick-gen-key '<brunoadele@gmail.com>' rsa4096 cert 2y
export GPG_USERID=$(gpg -K | grep -oE "[a-fA-F0-9]{40}")

# Subkey
gpg --quick-addkey ${GPG_USERID} rsa4096 sign 2y
gpg --quick-addkey ${GPG_USERID} rsa4096 encr 2y
gpg --quick-addkey ${GPG_USERID} rsa4096 auth 2y

# Add adduid and photo [Optional]
gpg --quick-add-uid ${GPG_USERID} <new_email>
gpg --edit-key ${GPG_USERID}
gpg> trust
gpg> addphoto filename
gpg> save
gpg --check-trustdb

# Import old key [Optional]
gpg --import <oldkey>
gpg --edit-key <oldkey>
gpg> setpref clean quit

# Sign a new key with the oldkey if the key is not too old [Optional]
gpg --default-key <oldkeyid> --sign-key ${GPG_USERID}

# Sign oldkey with newkey [Optional]
gpg --default-key ${GPG_USERID} --sign-key <oldkey>

# Revoke oldkey [Optional]
gpg --gen-revoke <oldkey> > /tmp/revoke.asc
gpg --import /tmp/revoke.asc
gpg --send-keys <oldkey>

# Push public keys
gpg --send-key ${GPG_USERID}

# Backup (script in .local/bin)
# Before run bellow command, edit ~/.config/zsh/variables.zsh (GPG_USERID and GPG_BACKUP_DIR)
gpg-backup-keys

# Secure keys (delete primary key from computer)
gpg --delete-secret-key ${GPG_USERID}
gpg --import ${GPG_BACKUP_DIR}/lastkeys/secret_subkeys.gpg

# Verify the computer not contain primary key
gpg -K # You should see 'sec #', indicates that the master key does not have a private key
```

## GPG agent configuration for SSH and GIT
See files
- `~/.gnupg/gpg-agent.conf`
- `~/.gnupg/sshcontrol`
- `.gitconfig`

## Annex
```
# Show key information
gpg --edit-key <keyid>
gpg> showpref
# Another method
gpg --export <keyid> | gpg --list-packets

# show a key was signed by another key
gpg --list-sig <keyid>

# Import key
gpg --import <key file>

# Import remote key
gpg --recv-keys <keyid>

# Edit key
gpg --edit-key <keyid>

# Encrypt file
gpg --encrypt -o <encrypted file> [--recipient <keyid>] <file to encrypt>

# Decrypt
gpg --decrypt -o <encrypted file> <file to decrypt>

# Sign
gpg -o <sign file> --sign <file to sign>

# sign verification
gpg --verify <sign file>
```

## Sources
- https://linuxfr.org/users/gouttegd/journaux/bien-demarrer-avec-gnupg
- https://www.nextinpact.com/article/25351/102685-gpg-comment-creer-paire-clefs-presque-parfaite
- https://www.nbs-system.com/publications/expertise/creation-de-sa-cle-gpg-et-utilisation-avec-passwordstore-enigmail-gpg-agent/
- https://alexcabal.com/creating-the-perfect-gpg-keypair
- https://www.pragmageek.fr/2015/04/renouvellement-cle-pgp/#remplacement-ancienne-cle
