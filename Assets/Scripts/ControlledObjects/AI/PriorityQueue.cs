using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class PriorityQueue
{
    private List<AStarNode> queue = new List<AStarNode>();

    private int binarySearch(float targetHeuristic)
    {
        int left = 0;
        int right = queue.Count - 1;
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

        // Return node
        return node;
    }

    /// <summary>
    ///     Add node to priority queue
    /// </summary>
    /// <param name="node"></param>
    public void addNode(AStarNode node)
    {
        if (this.queue.Count > 0)
        {
            this.queue.Insert(this.binarySearch(node.getCost()), node);
        }
        else
        {
            this.queue.Add(node);
        }
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

    /// <summary>
    /// Simulate a pop by prinitng out result
    /// </summary>
    public void debugSimulatePop()
    {
        Debug.Log("simulated pop: " + this.queue[this.queue.Count - 1].getCost());
    }

    public int Length()
    {
        return this.queue.Count;
    }
}
