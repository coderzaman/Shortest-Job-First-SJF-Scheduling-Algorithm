#SJF
#!/bin/bash
sort_processes() {
    n=$number

    for ((i = 0; i < n-1; i++)); do
        for ((j = 0; j < n-i-1; j++)); do
            if ((b[j] > b[j+1])); then
                temp_a=${a[j]}
                a[j]=${a[j+1]}
                a[j+1]=$temp_a

                temp_p=${p[j]}
                p[j]=${p[j+1]}
                p[j+1]=$temp_p


                temp_b=${b[j]}
                b[j]=${b[j+1]}
                b[j+1]=$temp_b
            elif ((b[j] == b[j+1] && a[j] > a[j+1])); then
                temp_p=${p[j]}
                p[j]=${p[j+1]}
                p[j+1]=$temp_p

                temp_a=${a[j]}
                a[j]=${a[j+1]}
                a[j+1]=$temp_a

                temp_b=${b[j]}
                b[j]=${b[j+1]}
                b[j+1]=$temp_b
            fi
        done
    done
}

read -p "Please Enter Number of Processes: " number

declare -a p
declare -a a
declare -a b


p=("P1" "P2" "P3" "P4" "P5")
a=(4 0 1 6 2)
b=(5 2 5 7 3)


sort_processes

echo "Sorted Process Names: ${p[@]}"
echo "Sorted Arrival Times: ${a[@]}"
echo "Sorted Burst Times: ${b[@]}"

completion_time=0
turnAroundTime=0
total_turn_Around_time=0
waiting_time=0
total_waiting_time=0

echo -e "\n||==Process==||==Arival Time==||==Burst Time==||==Completion Time==||==Turnaround Time==||==Waiting Time==||"

for ((i = 0; i < number; i++)); do
    if ((completion_time < a[i])); then
        completion_time=${a[i]}
    fi

    completion_time=$((completion_time + b[i]))
    turnAroundTime=$((completion_time - a[i]))
    waiting_time=$((turnAroundTime - b[i]))
    total_waiting_time=$((total_waiting_time + waiting_time))
    total_turn_Around_time=$((total_turn_Around_time + turnAroundTime))

    echo "       ${p[i]}             ${a[i]}                 ${b[i]}                 $completion_time                   $turnAroundTime                   $waiting_time"
done

averagTAT=$(echo "scale=2; $total_turn_Around_time / $number" | bc)
averageWaitingTime=$(echo "scale=2; $total_waiting_time / $number" | bc)
averageCompletionTime=$(echo "scale=2; $completion_time / $number" | bc)

echo -e "\n\nAverage Completion Time = $averageCompletionTime"
echo "Average Waiting Time = $averageWaitingTime"
echo "Average TAT = $averagTAT"
