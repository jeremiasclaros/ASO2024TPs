#!/bin/bash

numero_secreto=$(( RANDOM % 100 + 1 ))

adivina() {
    while true; do
        read -p "Adivina el número (entre 1 y 100): " intento

        if ! [[ "$intento" =~ ^[0-9]+$ ]]; then
            echo "Por favor, ingresa un número válido."
            continue
        fi

        intento=$((intento))

        if (( intento < numero_secreto )); then
            echo "Demasiado bajo. Intenta de nuevo."
        elif (( intento > numero_secreto )); then
            echo "Demasiado alto. Intenta de nuevo."
        else
            echo "¡Felicitaciones! Adivinaste el número."
            break
        fi
    done
}

adivina
