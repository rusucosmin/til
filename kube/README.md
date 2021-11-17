# Kuberentes Cheatsheet

```
kubectl run -i --tty --rm db-export --image=jbergknoff/postgresql-client --restart=Never --command -- pg_dump 'postgres://user:password@hostname/database' > .sql
```
