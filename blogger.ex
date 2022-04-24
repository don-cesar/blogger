defmodule Blogger do
  @moduledoc """
  Documentation for `Blogger`.
  """

  def fetch_blog do
    HTTPoison.get!("https://medium.com/podiihq/quick-connect-to-your-amazon-ec2-linux-instance-through-the-command-line-6c682960ef91")
  end

  def to_upper(words) do
    res = strings.map { '|string| string.upcase' }
    IO.puts(res)
  end

  def get_todos do
    todos = HTTPoison.get!("https://jsonplaceholder.typicode.com/todos/1")
    res = todos.body.map {'|todo|' todo.to_s.sub("=>", ":") + "\n" }
    IO.puts(res)
  end
end
