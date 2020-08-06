.class Lcom/tenten/LenoxPicture$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "LenoxPicture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tenten/LenoxPicture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tenten/LenoxPicture;


# direct methods
.method constructor <init>(Lcom/tenten/LenoxPicture;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/tenten/LenoxPicture$SettingsObserver;->this$0:Lcom/tenten/LenoxPicture;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/tenten/LenoxPicture$SettingsObserver;->this$0:Lcom/tenten/LenoxPicture;

    invoke-virtual {v1}, Lcom/tenten/LenoxPicture;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "picanim"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "picanim1"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "picanim2"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "picmagic"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "pichide"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tenten/LenoxPicture$SettingsObserver;->this$0:Lcom/tenten/LenoxPicture;

    invoke-virtual {v0}, Lcom/tenten/LenoxPicture;->updatepic()V

    iget-object v0, p0, Lcom/tenten/LenoxPicture$SettingsObserver;->this$0:Lcom/tenten/LenoxPicture;

    invoke-virtual {v0}, Lcom/tenten/LenoxPicture;->anim()V

    return-void
.end method
