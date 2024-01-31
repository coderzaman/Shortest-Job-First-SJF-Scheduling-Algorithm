
---

# Shortest Job First (SJF) Scheduling Algorithm

This Bash script implements the Shortest Job First (SJF) scheduling algorithm. SJF is a non-preemptive scheduling algorithm that selects the process with the smallest total remaining processing time.

## Usage

1. Ensure you have Bash installed on your system.

2. Clone the repository:

   ```bash
   git clone https://github.com/coderzaman/Shortest-Job-First-SJF-Scheduling-Algorithm.git
   ```

3. Navigate to the project directory:

   ```bash
   cd sjf-scheduling
   ```

4. Make the script executable:

   ```bash
   chmod +x sjf.sh
   ```

5. Run the script:

   ```bash
   ./sjf.sh
   ```

6. Follow the on-screen prompts to input the number of processes, arrival times, and burst times.

## Input Details

- **Number of Processes (number):** The total number of processes in the system.

- **Process Names (p):** An array representing process names (e.g., P1, P2).

- **Arrival Times (a):** An array representing arrival times for each process.

- **Burst Times (b):** An array representing burst times for each process.

## Output

The script outputs the sorted process names, arrival times, and burst times, along with a detailed table displaying the completion time, turnaround time, and waiting time for each process.

## Average Metrics

The script calculates and displays average completion time, average waiting time, and average turnaround time for all processes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Author

Aktaruzzaman

Feel free to contribute, report issues, or provide feedback.

Happy coding! 🚀

---
