# Scalingo Solutions Engineer Hard Skill Test

In order to deploy this application, clone this repository and create a Scalingo application with a PostgreSQL attached:

```bash
> APP_NAME="my-test"
> git clone git@github.com:Scalingo/sclng-solutions-engineer-rails-app
> cd sclng-solutions-engineer-rails-app
> scalingo create $APP_NAME
> scalingo --app $APP_NAME addons-add postgresql postgresql-sandbox
> git push scalingo master
```

You can see the following error at the end of the deployment:

```text
[...]
LoadError: Could not open library 'vips.so.42': vips.so.42: cannot open shared object file: No such file or directory.
[...]
```

Follow the test subject to make it possible to deploy this application.

After the first successful deployment, you need to seed the database with the following command:

```bash
> scalingo --app $APP_NAME run bundle exec rails logos:seed_scalingo
```
