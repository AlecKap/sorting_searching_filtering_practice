module PlayersHelper
  def sort_link(column:, lable:)
    link_to(lable, list_players_path(column: column))
  end
end
