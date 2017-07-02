...
# source: https://gitlab.com/DGuedes/forensic/blob/master/web/channels/alert_channel.ex
  alias Forensic.Report, as: R
  def handle_in("new_report", payload, socket) do
    params = payload
             |> Map.merge(%{"timestamps" => payload[:timestamps]})
             |> Map.drop([:timestamp])

    changeset = R.changeset(%R{}, params) |> Repo.insert
  end
...
