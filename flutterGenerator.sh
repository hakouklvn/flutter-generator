#!/usr/bin/env bash

fileName=$1
featureFolder=lib/features/"$fileName"

# FEATURES FOLDER
mkdir -p "$featureFolder"/{data,domain,presentation}
mkdir -p "$featureFolder/data"/{models,repositories,datasources}
mkdir -p "$featureFolder/domain"/{entities,repositories,usecases}
mkdir -p "$featureFolder/presentation"/{views,widgets,state}

# data folder
touch "$featureFolder"/data/models/"$fileName""_model.dart"
touch "$featureFolder"/data/repositories/"$fileName""_repository_impl.dart"
touch "$featureFolder"/data/datasources/"$fileName""_remote_datasource.dart"
touch "$featureFolder"/data/datasources/"$fileName""_local_datasource.dart"

# domain folder
touch "$featureFolder"/domain/entities/"$fileName""_entity.dart"
touch "$featureFolder"/domain/repositories/"$fileName""_repository.dart"

# presentation folder
touch "$featureFolder"/presentation/views/"$fileName""_screen.dart"
touch "$featureFolder"/presentation/widgets/"widgets.dart"
touch "$featureFolder"/presentation/state/"$fileName""_notifier.dart"
touch "$featureFolder"/presentation/state/"$fileName""_state.dart"
touch "$featureFolder"/presentation/state/"providers.dart"

