(define (problem sokoban-2.2)
	(:domain sokoban-domain)
	(:objects north south east west bot blockA blockB A5 A6 B4 B5 B6 C3 C4 C5 C6 D1 D2 D3 D4 D5)
	(:init (robot bot) (block blockA) (block blockB) 
			(locatedAt bot A5) (locatedAt blockA B5) (locatedAt blockB C5)
			(free A6) (free B4) (free B6) (free C3) (free C4) (free C6) (free D1) (free D2) (free D3) (free D4) (free D5)    
			(adjacent A5 A6 north) (adjacent A6 A5 south) 
			(adjacent B4 B5 north) (adjacent B5 B6 north) (adjacent B5 B4 south) (adjacent B6 B5 south)
			(adjacent C3 C4 north) (adjacent C4 C5 north) (adjacent C5 C6 north) (adjacent C4 C3 south) (adjacent C5 C4 south) (adjacent C6 C5 south)
			(adjacent D1 D2 north) (adjacent D2 D3 north) (adjacent D3 D4 north) (adjacent D4 D5 north) (adjacent D2 D1 south) (adjacent D3 D2 south) (adjacent D4 D3 south) (adjacent D5 D4 south)
			
			(adjacent A6 B6 east) (adjacent B6 C6 east)
			(adjacent A5 B5 east) (adjacent B5 C5 east) (adjacent C5 D5 east) 
			(adjacent B4 C4 east) (adjacent C4 D4 east) 
			(adjacent C3 D3 east)
			(adjacent B6 A6 west) (adjacent C6 B6 west)
			(adjacent B5 A5 west) (adjacent C5 B5 west) (adjacent D5 C5 west)
			(adjacent C4 B4 west) (adjacent D4 C4 west)
			(adjacent D3 C3 west)
	)
	(:goal (and (locatedAt blockA A6) (locatedAt blockB D1)))
)
