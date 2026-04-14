# Ruby Test App

This is a simple Ruby application structured with best practices.

## Structure

- `lib/`: Contains the application code.
  - `greeter.rb`: A simple logic class.
  - `main.rb`: The main entry point.
- `bin/`: (Optional) Executable scripts.
- `spec/`: (Optional) Tests.
- `Gemfile`: Manages Ruby dependencies.

## How to run (requires Ruby)

Once Ruby is installed:

1. Install dependencies:
   ```bash
   bundle install
   ```

2. Run the application:
   ```bash
   ruby lib/main.rb
   ```

3. Run tests (if implemented):
   ```bash
   rspec
   ```
