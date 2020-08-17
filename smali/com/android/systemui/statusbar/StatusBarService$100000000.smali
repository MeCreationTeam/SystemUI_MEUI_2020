.class Lcom/android/systemui/statusbar/StatusBarService$100000000;
.super Landroid/database/ContentObserver;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/android/systemui/statusbar/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarService;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    return-void
.end method

.method static access$0(Lcom/android/systemui/statusbar/StatusBarService$100000000;)Lcom/android/systemui/statusbar/StatusBarService;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    return-object v0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "navbar_enabled"

    invoke-static {v3, v4, v2}, Lcom/meui/MeSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    #setter for: Lcom/android/systemui/statusbar/StatusBarService;->isNewBarEnabled:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/StatusBarService;->access$S1000009(Lcom/android/systemui/statusbar/StatusBarService;Z)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "navbar_exchange"

    invoke-static {v3, v4, v1}, Lcom/meui/MeSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    #setter for: Lcom/android/systemui/statusbar/StatusBarService;->isNewBarExchange:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/StatusBarService;->access$S1000010(Lcom/android/systemui/statusbar/StatusBarService;Z)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "navbar_statusbarcolor"

    invoke-static {v3, v4, v1}, Lcom/meui/MeSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    #setter for: Lcom/android/systemui/statusbar/StatusBarService;->isNewSameColor:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/StatusBarService;->access$S1000012(Lcom/android/systemui/statusbar/StatusBarService;Z)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->isNewSameColor:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$L1000012(Lcom/android/systemui/statusbar/StatusBarService;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->isLastSameColor:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$L1000011(Lcom/android/systemui/statusbar/StatusBarService;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->isNewBarEnabled:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$L1000009(Lcom/android/systemui/statusbar/StatusBarService;)Z

    move-result v3

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->isLastNavBarEnabled:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$L1000007(Lcom/android/systemui/statusbar/StatusBarService;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #calls: Lcom/android/systemui/statusbar/StatusBarService;->addNavigationBar()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$1000033(Lcom/android/systemui/statusbar/StatusBarService;)V

    .line 187
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->isNewBarEnabled:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$L1000009(Lcom/android/systemui/statusbar/StatusBarService;)Z

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/StatusBarService;->isLastNavBarEnabled:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$S1000007(Lcom/android/systemui/statusbar/StatusBarService;Z)V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->isNewBarExchange:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$L1000010(Lcom/android/systemui/statusbar/StatusBarService;)Z

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/StatusBarService;->isLastNavBarExchange:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$S1000008(Lcom/android/systemui/statusbar/StatusBarService;Z)V

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->isNewSameColor:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$L1000012(Lcom/android/systemui/statusbar/StatusBarService;)Z

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/StatusBarService;->isLastSameColor:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$S1000011(Lcom/android/systemui/statusbar/StatusBarService;Z)V

    return-void

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->isLastSameColor:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$L1000011(Lcom/android/systemui/statusbar/StatusBarService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->isLastSameColor:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$L1000011(Lcom/android/systemui/statusbar/StatusBarService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->isNewSameColor:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$L1000012(Lcom/android/systemui/statusbar/StatusBarService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->mNavigationBarView:Lcom/android/systemui/statusbar/NavigationBarView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$L1000006(Lcom/android/systemui/statusbar/StatusBarService;)Lcom/android/systemui/statusbar/NavigationBarView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NavigationBarView;->setBackgroundColor(I)V

    goto :goto_1

    :cond_4
    move v0, v2

    .line 176
    goto :goto_0

    .line 178
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->isNewBarEnabled:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$L1000009(Lcom/android/systemui/statusbar/StatusBarService;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->isLastNavBarEnabled:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/StatusBarService;->access$L1000007(Lcom/android/systemui/statusbar/StatusBarService;)Z

    move-result v3

    and-int/2addr v0, v3

    if-eqz v0, :cond_7

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #calls: Lcom/android/systemui/statusbar/StatusBarService;->removeNavigationBar()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$1000036(Lcom/android/systemui/statusbar/StatusBarService;)V

    goto :goto_1

    :cond_6
    move v0, v2

    .line 178
    goto :goto_2

    .line 180
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->isLastNavBarExchange:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$L1000008(Lcom/android/systemui/statusbar/StatusBarService;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->isNewBarExchange:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$L1000010(Lcom/android/systemui/statusbar/StatusBarService;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->isNewBarEnabled:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$L1000009(Lcom/android/systemui/statusbar/StatusBarService;)Z

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->mNavigationBarView:Lcom/android/systemui/statusbar/NavigationBarView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$L1000006(Lcom/android/systemui/statusbar/StatusBarService;)Lcom/android/systemui/statusbar/NavigationBarView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->isNewBarExchange:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$L1000010(Lcom/android/systemui/statusbar/StatusBarService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NavigationBarView;->exchangeKeys(Z)V

    goto/16 :goto_1

    .line 180
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$100000000;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->isNewBarExchange:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$L1000010(Lcom/android/systemui/statusbar/StatusBarService;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_a
    move v1, v2

    goto :goto_3
.end method
