.class Lcom/android/systemui/statusbar/StatusBarView$MeSettingsObserver;
.super Landroid/database/ContentObserver;
.source "StatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "MeSettingsObserver"
.end annotation


# instance fields
.field private final this$0:Lcom/android/systemui/statusbar/StatusBarView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/StatusBarView;)V
    .locals 1
    .parameter

    .prologue
    .line 115
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarView$MeSettingsObserver;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    return-void
.end method

.method static access$0(Lcom/android/systemui/statusbar/StatusBarView$MeSettingsObserver;)Lcom/android/systemui/statusbar/StatusBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView$MeSettingsObserver;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    return-object v0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarView$MeSettingsObserver;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarView$MeSettingsObserver;->this$0:Lcom/android/systemui/statusbar/StatusBarView;

    #getter for: Lcom/android/systemui/statusbar/StatusBarView;->resolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarView;->access$L1000001(Lcom/android/systemui/statusbar/StatusBarView;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sb_default_color"

    const/high16 v3, 0x4d00

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/StatusBarView;->mDefaultColor:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->access$S1000003(Lcom/android/systemui/statusbar/StatusBarView;I)V

    return-void
.end method
