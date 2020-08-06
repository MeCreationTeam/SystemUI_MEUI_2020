.class public abstract Lcom/android/systemui/statusbar/util/StateTracker;
.super Ljava/lang/Object;
.source "StateTracker.java"


# instance fields
.field private mActualState:Ljava/lang/Boolean;

.field private mDeferredStateChangeRequestNeeded:Z

.field protected mInTransition:Z

.field private mIntendedState:Ljava/lang/Boolean;

.field protected mIsUserSwitching:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mInTransition:Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mActualState:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mDeferredStateChangeRequestNeeded:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIsUserSwitching:Z

    return-void
.end method


# virtual methods
.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public abstract getDisabledResource()I
.end method

.method public abstract getEnabledResource()I
.end method

.method public abstract getImageButtonView()Landroid/widget/ImageView;
.end method

.method public abstract getIndicatorView()Landroid/widget/ImageView;
.end method

.method public getInterMedateResource()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getIsUserSwitching()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIsUserSwitching:Z

    return v0
.end method

.method public getSwitchingGifView()Landroid/widget/ImageView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTriState(Landroid/content/Context;)I
    .locals 2

    const/4 v1, -0x1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mInTransition:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/util/StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isClickable()Z
    .locals 3

    const-string v0, "StateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsUserSwitching is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIsUserSwitching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIsUserSwitching:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract requestStateChange(Landroid/content/Context;Z)V
.end method

.method public final setCurrentState(Landroid/content/Context;I)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "StateTracker"

    const-string v1, "StateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentState: newState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mInTransition:Z

    packed-switch p2, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mInTransition:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mDeferredStateChangeRequestNeeded:Z

    if-eqz v1, :cond_1

    const-string v1, "StateTracker"

    const-string v1, "processing deferred state change"

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mActualState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mActualState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "StateTracker"

    const-string v1, "... but intended state matches, so no changes."

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mDeferredStateChangeRequestNeeded:Z

    :cond_1
    return-void

    :pswitch_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mInTransition:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mInTransition:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mInTransition:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_3
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mInTransition:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mInTransition:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/util/StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setImageViewResources(Landroid/content/Context;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    const-string v2, "StateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "setImageViewResources state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/util/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/util/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIsUserSwitching:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getImageButtonView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->isClickable()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getImageButtonView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getImageButtonView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getDisabledResource()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getIndicatorView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getSwitchingGifView()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0

    :pswitch_1
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIsUserSwitching:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getImageButtonView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->isClickable()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getImageButtonView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getImageButtonView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getEnabledResource()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getIndicatorView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getSwitchingGifView()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getImageButtonView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getSwitchingGifView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getInterMedateResource()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getImageButtonView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getIndicatorView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v1, :cond_0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getInterMedateResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setIsUserSwitching(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIsUserSwitching:Z

    return-void
.end method

.method public toggleState(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const-string v2, "ClickEvent"

    const-string v3, "toggleState"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIsUserSwitching:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->getImageButtonView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->isClickable()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/util/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mInTransition:Z

    if-eqz v2, :cond_2

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mDeferredStateChangeRequestNeeded:Z

    :goto_1
    return-void

    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v4

    :goto_2
    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_2

    :cond_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mInTransition:Z

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/util/StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
