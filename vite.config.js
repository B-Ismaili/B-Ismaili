import { defineConfig } from "vite";
import laravel from "laravel-vite-plugin";

export default defineConfig({
    plugins: [
        laravel({
            input: [
                "resources/css/app.css",
                "resources/css/layouts.css",
                "resources/css/dashboard.css",
                "resources/css/jobs.css",
                "resources/css/services.css",
                "resources/css/industries.css",
                "resources/css/team-members.css",
                "resources/css/contact_messages.css",
                "resources/css/service_categories.css",
                "resources/css/welcome.css",
                "resources/css/partners.css",
                "resources/css/testimonials.css",
                "resources/js/app.js",
            ],
            refresh: true,
        }),
    ],
});
