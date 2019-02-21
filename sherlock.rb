def movingTiles(l, s1, s2, queries)
    #
    # Write your code here.
    #
    queries.map { |query| puts ((l-Math.sqrt(query))/((s2-s1).abs)*Math.sqrt(2)).round(8)}

end

queries = [100, 50, 60, 0]

movingTiles(10, 1, 2, queries)