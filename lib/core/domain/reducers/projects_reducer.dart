import 'package:built_collection/built_collection.dart';
import 'package:built_redux/built_redux.dart';
import 'package:tecon_task/core/core.dart';

NestedReducerBuilder<AppState, AppStateBuilder, ProjectsState,
    ProjectsStateBuilder> createProjectsReducer() {
  return NestedReducerBuilder<AppState, AppStateBuilder, ProjectsState,
      ProjectsStateBuilder>(
    (state) => state.projectsState,
    (builder) => builder.projectsState,
  )
    ..add(ProjectsActionsNames.setProjects, _setProjects)
    ..add(ProjectsActionsNames.setCurrentProject, _setCurrentProject)
    ..add(ProjectsActionsNames.setSelectedProject, _setSelectedProject);
}

void _setProjects(ProjectsState state, Action<BuiltList<Project>> action,
    ProjectsStateBuilder builder) {
  builder.projects.replace(action.payload);
}

void _setCurrentProject(
    ProjectsState state, Action<Project> action, ProjectsStateBuilder builder) {
  builder.currentProject.replace(action.payload);
}

void _setSelectedProject(
    ProjectsState state, Action<Project> action, ProjectsStateBuilder builder) {
  builder.selectedProject.replace(action.payload);
}
