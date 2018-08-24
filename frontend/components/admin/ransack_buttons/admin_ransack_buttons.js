import application from "stimulus_application";
import { definitionsFromContext } from "stimulus/webpack-helpers";
import "./admin_ransack_buttons.css";

const context = require.context('./', true, /_controller\.js$/);
application.load(definitionsFromContext(context));
