CREATE TABLE notifications.notifications (
    id UUID PRIMARY KEY,
    event_id UUID NOT NULL,
    type VARCHAR(100) NOT NULL,
    status VARCHAR(30) NOT NULL,
    recipient VARCHAR(150) NOT NULL,
    message TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL,
    CONSTRAINT uk_notifications_event_id UNIQUE (event_id)
);

CREATE TABLE notifications.processed_messages (
    message_id UUID PRIMARY KEY,
    processed_at TIMESTAMP NOT NULL
);
