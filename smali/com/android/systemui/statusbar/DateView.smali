.class public final Lcom/android/systemui/statusbar/DateView;
.super Landroid/widget/TextView;
.source "DateView.java"


# instance fields
.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdating:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/DateView;->mUpdating:Z

    new-instance v0, Lcom/android/systemui/statusbar/DateView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/DateView$1;-><init>(Lcom/android/systemui/statusbar/DateView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/DateView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/DateView;->updateClock()V

    return-void
.end method

.method private final updateClock()V
    .locals 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/DateView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/DateView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected getSuggestedMinimumWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/DateView;->setUpdates(Z)V

    return-void
.end method

.method setUpdates(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/DateView;->mUpdating:Z

    if-eq p1, v1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/DateView;->mUpdating:Z

    if-eqz p1, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/DateView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/DateView;->updateClock()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/DateView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
