.class Lcom/android/systemui/statusbar/NavigationBarView$KeyEventInjector;
.super Ljava/lang/Object;
.source "NavigationBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "KeyEventInjector"
.end annotation


# instance fields
.field private keyCode:I

.field private final this$0:Lcom/android/systemui/statusbar/NavigationBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NavigationBarView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NavigationBarView$KeyEventInjector;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    .line 1381
    iput p2, p0, Lcom/android/systemui/statusbar/NavigationBarView$KeyEventInjector;->keyCode:I

    return-void
.end method

.method static access$0(Lcom/android/systemui/statusbar/NavigationBarView$KeyEventInjector;)Lcom/android/systemui/statusbar/NavigationBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarView$KeyEventInjector;->this$0:Lcom/android/systemui/statusbar/NavigationBarView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1386
    :try_start_0
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/NavigationBarView$KeyEventInjector;->keyCode:I

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1390
    const-string v0, "NavigationBarView"

    const-string v1, "Key down event not injected"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :cond_0
    :goto_0
    return-void

    .line 1393
    :cond_1
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/systemui/statusbar/NavigationBarView$KeyEventInjector;->keyCode:I

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1397
    const-string v0, "NavigationBarView"

    const-string v1, "Key up event not injected"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1400
    const-string v1, "NavigationBarView"

    const-string v2, "Error injecting key event"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
