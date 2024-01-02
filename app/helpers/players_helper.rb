module PlayersHelper
  def sort_link(column:, lable:)
    if column == params[:column]
      link_to(lable, list_players_path(column: column, direction: next_direction))
    else
      link_to(lable, list_players_path(column: column, direction: 'asc'))
    end
  end

  def next_direction
    params[:direction] == 'asc' ? 'desc' : 'asc'
  end
end
