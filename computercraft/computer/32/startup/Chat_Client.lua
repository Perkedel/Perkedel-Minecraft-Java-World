ServerName = "Perkedel"
JoinName = "TiredToClone"

print("Welcome to Chat Clien\n\n")
print("\nServer Name = "..ServerName)
print("\nJoin Name = "..JoinName)
print("\n\n Joinning Chat... \n\n")

print("Initiating Repeater...")
shell.openTab("repeat")

sleep(5)
shell.openTab("chat", "join "..ServerName.." "..JoinName)

print("Enjoy Chat on next tab!\n")
print("\nBy JOELwindows7\nPerkedel Technologies\nGNU GPL v3")
