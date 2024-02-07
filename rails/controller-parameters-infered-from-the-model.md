# Controller Parameters Inferred from the Model

Be careful when making a network request like this to a Rails controller with strong parameters:

```tsx
const updateEmployee = (id: number, employee: Employee) =>
  axios.put<Employee>(`/employees/${id}`, employee)
```

```ruby
def employee_params
  params.require(:employee).permit(:name)
end
```

Note that our payload is expected under key `employee`– but we aren't sending
it that way. When this happens, Rails infers what goes where:

```
PUT https://server.dev/employees/1 { "employee" => { "name" => "Jake" } }
```

Notice that `name` is in the employee object, even though I didn't send such a
payload. This works fine until you send a parameter that's not on the
`Employee` model, such as a nested attribute. Then you get this:

```
PUT https://server.dev/employees/1 { "nested" => "excluded", "employee" => { "name" => "Jake" } }
```

Send that payload with the correct key:

```diff
- return axios.put<Employee>(`/employees/${id}`, employee)
+ return axios.put<Employee>(`/employees/${id}`, { employee })
```

And Rails follows instructions:

```
PUT https://server.dev/employees/1 { "employee" => { "name" => "Jake", "nested" => "included" } }
```
