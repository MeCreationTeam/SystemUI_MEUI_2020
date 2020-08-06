.class public Lcom/android/systemui/usb/UsbResolverActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "UsbResolverActivity.java"


# instance fields
.field private mAccessory:Landroid/hardware/usb/UsbAccessory;

.field private mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    const-string v11, "UsbResolverActivity"

    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    instance-of v1, v10, Landroid/content/Intent;

    if-nez v1, :cond_0

    const-string v1, "UsbResolverActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target is not an intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbResolverActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    move-object v0, v10

    check-cast v0, Landroid/content/Intent;

    move-object v3, v0

    const-string v1, "rlist"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040355

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-super/range {v1 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    const v1, 0x1020187

    invoke-virtual {p0, v1}, Lcom/android/systemui/usb/UsbResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    if-eqz v8, :cond_1

    const v1, 0x7f08000f

    invoke-virtual {v8, v1}, Landroid/widget/CheckBox;->setText(I)V

    :cond_1
    const-string v1, "accessory"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbAccessory;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    iget-object v1, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    if-nez v1, :cond_2

    const-string v1, "UsbResolverActivity"

    const-string v1, "accessory is null"

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbResolverActivity;->finish()V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    iget-object v2, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/usb/UsbDisconnectedReceiver;-><init>(Landroid/app/Activity;Landroid/hardware/usb/UsbAccessory;)V

    iput-object v1, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/UsbResolverActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity;->onDestroy()V

    return-void
.end method

.method protected onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V
    .locals 7

    const-string v6, "UsbResolverActivity"

    :try_start_0
    const-string v4, "usb"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v2

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-interface {v2, v4, v3}, Landroid/hardware/usb/IUsbManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    if-eqz p3, :cond_0

    iget-object v4, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/hardware/usb/IUsbManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/systemui/usb/UsbResolverActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/hardware/usb/IUsbManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v1, v4

    const-string v4, "UsbResolverActivity"

    const-string v4, "onIntentSelected failed"

    invoke-static {v6, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_3
    const-string v4, "UsbResolverActivity"

    const-string v5, "startActivity failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
