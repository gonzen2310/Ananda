package Chapter3;

// Escape Sequences for chars and Strings
public class EscapeSequences {
    public static void main(String[] args) {
        // Octal character / String
        char octal_char = '\141';
        String octal_str = "\141gonzalo";
        System.out.println("char: " + octal_char + ", String: " + octal_str);
        // Hexadecimal character / String
        char hex_char = '\uB432';
        String hex_str = "\uA432";
        System.out.println("char: " + hex_char + ", String: " + hex_str);
        // Single Quote
        char single_quote_char = '\'';
        String single_quote_str = "This is a single quote \'";
        System.out.println("char: " + single_quote_char + ", String: " + single_quote_str);
        // Double Quote
        char double_quote_char = '\"';
        String double_quote_str = "This is a single quote \"";
        System.out.println("char: " + double_quote_char + ", String: " + double_quote_str);
        // Backslash
        char backslash_char = '\\';
        String backslash_str = "This is a backslash \\";
        System.out.println("char: " + backslash_char + ", String: " + backslash_str);
        // Carriage return
        char carriage_return_char = '\r';
        String carriage_return_str = "This is a \r carriage return";
        System.out.println("char: " + carriage_return_char + ", String: " + carriage_return_str);
        System.out.println("Give \r me love\t honey \t\r I love you a lot");
        // New line
        char new_line_char = '\n';
        String new_line_str = "\nThis is a new line";
        System.out.println("char: " + new_line_char + ", String: " + new_line_str);
        // Form feed
        char new_formfeed_char = '\f';
        String new_formfeed_str = "This is a form feed \f";
        System.out.println("char: " + new_formfeed_char + ", String: " + new_formfeed_str);
        // Backspace
        char backspace_char = '\b';
        String backspace_std = "This is a backspace \bhere.";

        System.out.println("char: " + backspace_char + ", String: " + backspace_std);
    }
}
