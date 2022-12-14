package org.codehaus.plexus.component.factory.bsh;

import bsh.Interpreter;

/**
 * Beanshell components must implement this to be able to provide the interpreter.
 * @todo This may not be needed if the creation and configuration is done in one step, or there is some other way
 * of getting back the interpreter from the created component
 *
 * @author <a href="mailto:brett@apache.org">Brett Porter</a>
 * @version $Id: BshComponent.java 1817 2005-05-17 08:08:08Z brett $
 */
public interface BshComponent
{
    Interpreter getInterpreter();
}
