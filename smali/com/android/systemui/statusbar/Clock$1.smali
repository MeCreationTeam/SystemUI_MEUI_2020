.class Lcom/android/systemui/statusbar/Clock$1;
.super Landroid/content/BroadcastReceiver;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/Clock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/Clock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/Clock$1;->this$0:Lcom/android/systemui/statusbar/Clock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "time-zone"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/Clock$1;->this$0:Lcom/android/systemui/statusbar/Clock;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    #setter for: Lcom/android/systemui/statusbar/Clock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/Clock;->access$002(Lcom/android/systemui/statusbar/Clock;Ljava/util/Calendar;)Ljava/util/Calendar;

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/Clock$1;->this$0:Lcom/android/systemui/statusbar/Clock;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/Clock;->updateClock()V

    return-void
.end method
