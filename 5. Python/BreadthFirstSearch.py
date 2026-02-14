{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "fd4b550f",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "A B C D E F "
     ]
    }
   ],
   "source": [
    "graph = {\n",
    "  'A' : ['B','C'],\n",
    "  'B' : ['D', 'E'],\n",
    "  'C' : ['F'],\n",
    "  'D' : [],\n",
    "  'E' : ['F'],\n",
    "  'F' : []\n",
    "}\n",
    "\n",
    "visited = [] # List to keep track of visited nodes.\n",
    "queue = []     #Initialize a queue\n",
    "\n",
    "def bfs(visited, graph, node):\n",
    "  visited.append(node)\n",
    "  queue.append(node)\n",
    "\n",
    "  while queue:\n",
    "    s = queue.pop(0) \n",
    "    print (s, end = \" \") \n",
    "\n",
    "    for neighbour in graph[s]:\n",
    "      if neighbour not in visited:\n",
    "        visited.append(neighbour)\n",
    "        queue.append(neighbour)\n",
    "\n",
    "# Driver Code\n",
    "bfs(visited, graph, 'A')"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "f80d9138",
   "metadata": {},
   "outputs": [],
   "source": []
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "6af81399",
   "metadata": {},
   "outputs": [],
   "source": []
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "a3164f9e",
   "metadata": {},
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3 (ipykernel)",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.11.5"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
