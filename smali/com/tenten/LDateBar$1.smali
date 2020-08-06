.class Lcom/tenten/LDateBar$1;
.super Landroid/content/BroadcastReceiver;
.source "LDateBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tenten/LDateBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tenten/LDateBar;


# direct methods
.method constructor <init>(Lcom/tenten/LDateBar;)V
    .locals 0

    iput-object p1, p0, Lcom/tenten/LDateBar$1;->this$0:Lcom/tenten/LDateBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, MMM d"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/tenten/LDateBar$1;->this$0:Lcom/tenten/LDateBar;

    invoke-virtual {v2, v0}, Lcom/tenten/LDateBar;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/tenten/LDateBar$1;->this$0:Lcom/tenten/LDateBar;

    invoke-virtual {v2}, Lcom/tenten/LDateBar;->invalidate()V

    return-void
.end method
