# Commands

Create application folder structure and initial files
```bash
$ rails new rails-tutorial --database=postgresql -T # Use postgres for database,
                                                    # no test framework since we'll install rspec later.
```

Create database
```bash
  rake db:create db:migrate # Create and migrate database.
```
