using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class PriorityQueue
{
	private int size = 0;
	private List<AStarNode> queue = new List<AStarNode>();
	
	private int binarySearch(float targetHeuristic)
	{
		int left = 0;
		int right = this.size - 1;
		int mid = 0;
		bool found = false;
		bool rightPush = true;
		
		while (left <= right)
		{
			// C# doesn't require conversion to int, so get mid point
			mid = (left + right) / 2;
			float currentHeuristic = queue[mid].getCost();
			
			if (currentHeuristic == targetHeuristic)
			{
				found = true;
				break;
			}
			
			if (currentHeuristic > targetHeuristic)
			{
				left = mid + 1;
			}
			else
			{
				// right has been moved
				rightPush = false;
				
				right = mid - 1;
			}
		}
		
		// Push over 1?
		if (!found && rightPush)
		{
			mid += 1;
		}
		
		// Return mid
		return mid;
	}
	
	/// <summary>
	///     Pop node from queue
	/// </summary>
	/// <returns></returns>
	public AStarNode popNode()
	{
		// get removal index
		int index = this.queue.Count - 1;
		
		// Store node to be removed
		AStarNode node = this.queue[index];
		
		// Removenode
		this.queue.RemoveAt(index);
		
		// reduce size
		--this.size;
		
		// Return node
		return node;
	}
	
	/// <summary>
	///     Add node to priority queue
	/// </summary>
	/// <param name="node"></param>
	public void addNode(AStarNode node)
	{
		if (this.isEmpty())
		{
			this.queue.Insert(this.binarySearch(node.getCost()), node);
		}
		else
		{
			this.queue.Add(node);
		}
		
		// reduce size
		++this.size;
	}
	
	/// <summary>
	/// Length this instance.
	/// </summary>
	public int Length()
	{
		// TODO: change to getter / setter
		return this.size;
	}
	
	/// <summary>
	/// Return if the queeu is empty or not
	/// </summary>
	/// <returns><c>true</c>, if is not empty, <c>false</c> is not empty.</returns>
	public bool isEmpty()
	{
		return !this.size.Equals(0);
	}
	
	/// <summary>
	/// Simulate a pop by prinitng out result
	/// </summary>
	public void debugSimulatePop()
	{
		Debug.Log("simulated pop: " + this.queue[this.queue.Count - 1].getCost());
	}
	
	/// <summary>
	///     Print all elements in the queue
	/// </summary>
	public void debugPrint()
	{
		foreach (AStarNode node in this.queue)
		{
			Debug.Log("Cost: " + node.getCost());
		}
		Debug.Log("");
		this.debugSimulatePop();
		Debug.Log("------");
	}
}
