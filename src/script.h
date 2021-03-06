#ifndef LIBWALLY_CORE_SCRIPT_INTERNAL_H
#define LIBWALLY_CORE_SCRIPT_INTERNAL_H 1

/* Get the size of a push from the script push opcode(s) */
int script_get_push_size_from_script(
    const unsigned char *bytes_in,
    size_t len_in,
    size_t *size);

/* Get the size of a push opcode from the script push opcode(s) */
int script_get_push_opcode_size_from_script(
    const unsigned char *bytes_in,
    size_t len_in,
    size_t *size);

#endif /* LIBWALLY_CORE_SCRIPT_INTERNAL_H */
