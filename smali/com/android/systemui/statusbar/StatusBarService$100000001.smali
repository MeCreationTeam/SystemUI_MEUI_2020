.class Lcom/android/systemui/statusbar/StatusBarService$100000001;
.super Lcom/android/systemui/statusbar/OnBarColorChangeListener;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation


# instance fields
.field private final this$0:Lcom/android/systemui/statusbar/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/OnBarColorChangeListener;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$100000001;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    return-void
.end method

.method static access$0(Lcom/android/systemui/statusbar/StatusBarService$100000001;)Lcom/android/systemui/statusbar/StatusBarService;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$100000001;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    return-object v0
.end method


# virtual methods
.method public onColorChange(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$100000001;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->mNavigationBarView:Lcom/android/systemui/statusbar/NavigationBarView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$L1000006(Lcom/android/systemui/statusbar/StatusBarService;)Lcom/android/systemui/statusbar/NavigationBarView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NavigationBarView;->setBackgroundColor(I)V

    return-void
.end method
