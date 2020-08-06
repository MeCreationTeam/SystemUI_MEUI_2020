.class Lcom/tenten/LSettingsBar$1;
.super Ljava/lang/Object;
.source "LSettingsBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tenten/LSettingsBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tenten/LSettingsBar;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/tenten/LSettingsBar;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tenten/LSettingsBar$1;->this$0:Lcom/tenten/LSettingsBar;

    iput-object p2, p0, Lcom/tenten/LSettingsBar$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.TabbedSettings"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/tenten/LSettingsBar$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/tenten/LSettingsBar$1;->val$context:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapse()V

    :cond_0
    return-void
.end method
