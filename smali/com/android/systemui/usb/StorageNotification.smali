.class public Lcom/android/systemui/usb/StorageNotification;
.super Landroid/os/storage/StorageEventListener;
.source "StorageNotification.java"


# static fields
.field public static mIsNotifyMedRemoveCancel:Z


# instance fields
.field private mAsyncEventHandler:Landroid/os/Handler;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mMediaStorageNotification:Landroid/app/Notification;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUmsAvailable:Z

.field private mUsbStorageNotification:Landroid/app/Notification;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/usb/StorageNotification;->mIsNotifyMedRemoveCancel:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    const/4 v8, 0x0

    const-string v9, "removed"

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    new-instance v3, Lcom/android/systemui/usb/StorageNotification$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/usb/StorageNotification$3;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    iput-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v3, "storage"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    iput-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->isUsbMassStorageConnected()Z

    move-result v0

    const-string v3, "StorageNotification"

    const-string v4, "Startup with UMS connection %s (media state %s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "SystemUI StorageNotification"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "removed"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "removed"

    invoke-virtual {p0, v8, v8, v9}, Lcom/android/systemui/usb/StorageNotification;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->onUsbMassStorageConnectionChanged(Z)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/usb/StorageNotification;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onUsbMassStorageConnectionChangedAsync(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/usb/StorageNotification;->onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "StorageNotification"

    const-string v1, "Media {%s} state changed from {%s} -> {%s}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "unmounted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "shared"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "StorageNotification"

    const-string v1, "send usbIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/content/Intent;->ACTION_SPRD_UMS_SHARED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    const-string v0, "shared"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    :goto_1
    return-void

    :cond_1
    const-string v0, "checking"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "mounted"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "unmounted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "nofs"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/content/Intent;->ACTION_SPRD_UMS_UNSHARED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v0, "checking"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v1, 0x10403a7

    const v2, 0x10403a8

    const v3, 0x10800ab

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_1

    :cond_5
    const-string v0, "mounted"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_1

    :cond_6
    const-string v0, "unmounted"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "shared"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_8

    const v1, 0x10403af

    const v2, 0x10403b0

    const v3, 0x108007a

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_1

    :cond_8
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_2

    :cond_9
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_1

    :cond_a
    const-string v0, "nofs"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/internal/app/ExternalMediaFormatActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const v1, 0x10403a9

    const v2, 0x10403aa

    const v3, 0x108007b

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_1

    :cond_b
    const-string v0, "unmountable"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/internal/app/ExternalMediaFormatActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const v1, 0x10403ab

    const v2, 0x10403ac

    const v3, 0x108007b

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_1

    :cond_c
    const-string v0, "removed"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const v1, 0x10403b1

    const v2, 0x10403b2

    const v3, 0x108007b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_1

    :cond_d
    const-string v0, "bad_removal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const v1, 0x10403ad

    const v2, 0x10403ae

    const v3, 0x108008a

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_1

    :cond_e
    const-string v0, "StorageNotification"

    const-string v1, "Ignoring unknown state {%s}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private onUsbMassStorageConnectionChangedAsync(Z)V
    .locals 6

    iput-boolean p1, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageNotification"

    const-string v2, "UMS connection changed to %s (media state %s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const-string v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "checking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    return-void
.end method

.method private declared-synchronized setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V
    .locals 8

    const v6, 0x10403b1

    monitor-enter p0

    if-nez p4, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    if-eqz v1, :cond_2

    if-eqz p4, :cond_2

    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_2
    if-eqz p4, :cond_6

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    if-nez v3, :cond_3

    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroid/app/Notification;->when:J

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v4, v3, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, -0x2

    iput v4, v3, Landroid/app/Notification;->defaults:I

    if-eqz p5, :cond_7

    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    :cond_4
    :goto_1
    if-ne p1, v6, :cond_5

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/systemui/usb/StorageNotifyRecevier;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v4, "ACTION_STORAGE_MED_REMOVE_CANCEL"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iput-object v2, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-nez p6, :cond_9

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iput p3, v4, Landroid/app/Notification;->icon:I

    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v2, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    if-eqz p4, :cond_8

    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7
    if-eq p1, v6, :cond_4

    :try_start_2
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const/4 v4, 0x2

    iput v4, v3, Landroid/app/Notification;->flags:I

    goto :goto_1

    :cond_8
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_9
    move-object v3, p6

    goto :goto_2
.end method

.method private declared-synchronized setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V
    .locals 16

    monitor-enter p0

    if-nez p5, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v12, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object v12, v0

    const-string v13, "notification"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    if-eqz v9, :cond_0

    if-eqz p5, :cond_4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    move-object v0, v10

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    move-object v0, v10

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    if-nez v12, :cond_2

    new-instance v12, Landroid/app/Notification;

    invoke-direct {v12}, Landroid/app/Notification;-><init>()V

    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    move/from16 v0, p3

    move-object v1, v12

    iput v0, v1, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    const-wide/16 v13, 0x0

    iput-wide v13, v12, Landroid/app/Notification;->when:J

    :cond_2
    if-eqz p4, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    iget v13, v12, Landroid/app/Notification;->defaults:I

    or-int/lit8 v13, v13, 0x1

    iput v13, v12, Landroid/app/Notification;->defaults:I

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    const/4 v13, 0x2

    iput v13, v12, Landroid/app/Notification;->flags:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    iput-object v11, v12, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-nez p6, :cond_3

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v6, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p6

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object v13, v0

    move-object v0, v12

    move-object v1, v13

    move-object v2, v11

    move-object v3, v7

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "adb_enabled"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-ne v12, v13, :cond_6

    const/4 v12, 0x1

    move v5, v12

    :goto_2
    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    move-object/from16 v0, p6

    move-object v1, v12

    iput-object v0, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    iget v8, v12, Landroid/app/Notification;->icon:I

    if-eqz p5, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    invoke-virtual {v9, v8, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    iget v13, v12, Landroid/app/Notification;->defaults:I

    and-int/lit8 v13, v13, -0x2

    iput v13, v12, Landroid/app/Notification;->defaults:I

    goto :goto_1

    :cond_6
    const/4 v12, 0x0

    move v5, v12

    goto :goto_2

    :cond_7
    invoke-virtual {v9, v8}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    nop
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/StorageNotification$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/usb/StorageNotification$2;-><init>(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUsbMassStorageConnectionChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/StorageNotification$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/usb/StorageNotification$1;-><init>(Lcom/android/systemui/usb/StorageNotification;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method updateUsbMassStorageNotification(Z)V
    .locals 7

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v6, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
